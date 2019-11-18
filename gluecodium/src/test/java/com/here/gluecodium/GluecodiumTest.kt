/*
 * Copyright (C) 2016-2019 HERE Europe B.V.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * SPDX-License-Identifier: Apache-2.0
 * License-Filename: LICENSE
 */

package com.here.gluecodium

import com.here.gluecodium.Gluecodium.Options
import com.here.gluecodium.cache.CachingStrategy
import com.here.gluecodium.cache.CachingStrategyCreator
import com.here.gluecodium.generator.common.GeneratedFile
import com.here.gluecodium.model.lime.LimeModel
import com.here.gluecodium.model.lime.LimeModelLoader
import com.here.gluecodium.output.FileOutput
import com.here.gluecodium.platform.common.GeneratorSuite
import io.mockk.spyk
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Rule
import org.junit.Test
import org.junit.rules.ExpectedException
import org.junit.rules.TemporaryFolder
import org.junit.runner.RunWith
import org.mockito.ArgumentMatchers
import org.mockito.ArgumentMatchers.any
import org.mockito.ArgumentMatchers.anyBoolean
import org.mockito.ArgumentMatchers.anyList
import org.mockito.Mock
import org.mockito.Mockito
import org.mockito.Mockito.`when`
import org.mockito.Mockito.mock
import org.mockito.Mockito.never
import org.mockito.Mockito.times
import org.mockito.Mockito.verify
import org.mockito.MockitoAnnotations
import org.powermock.api.mockito.PowerMockito
import org.powermock.core.classloader.annotations.PrepareForTest
import org.powermock.modules.junit4.PowerMockRunner
import java.io.File
import java.io.IOException
import java.nio.file.Files
import java.nio.file.Paths

@RunWith(PowerMockRunner::class)
@PrepareForTest(GeneratorSuite::class, CachingStrategyCreator::class)
class GluecodiumTest {
    @Mock
    private lateinit var modelLoader: LimeModelLoader
    @Mock
    private lateinit var generator: GeneratorSuite
    @Mock
    private lateinit var cache: CachingStrategy

    @Rule
    val expectedException: ExpectedException = ExpectedException.none()
    @Rule
    val temporaryFolder = TemporaryFolder()

    @Before
    fun setUp() {
        MockitoAnnotations.initMocks(this)
        PowerMockito.mockStatic(GeneratorSuite::class.java, CachingStrategyCreator::class.java)

        `when`(
            CachingStrategyCreator.initializeCaching(anyBoolean(), any(), any())
        ).thenReturn(cache)
        `when`(cache.updateCache(any(), any())).thenReturn(emptyList())
        `when`(cache.write(true)).thenReturn(true)
        `when`(cache.write(false)).thenReturn(false)

        `when`(generator.name).thenReturn("")
        `when`(GeneratorSuite.instantiateByShortName(any(), any())).thenReturn(generator)

        `when`(modelLoader.loadModel(anyList(), anyList())).thenReturn(LimeModel(emptyMap(), emptyList()))
    }

    @Test
    fun failedInstantiationOfGenerator() {
        // Arrange
        `when`(GeneratorSuite.instantiateByShortName(any(), any())).thenReturn(null)
        val options = Options(
            idlSources = listOf(""),
            generators = setOf("invalidGenerator")
        )

        // Act, Assert
        assertFalse(createGluecodium(options).execute())
    }

    @Test
    fun fileNameCollisionsResolved() {
        // Arrange
        `when`(generator.generate(any())).thenReturn(listOf(FILE, FILE, FILE))
        val options = Options(
            idlSources = listOf(""),
            generators = setOf(SHORT_NAME),
            isValidatingOnly = false
        )

        // Act, assert
        assertFalse(createGluecodium(options).execute())
    }

    @Test
    fun executeValidateOnly() {
        // Arrange
        val options = Options(
            idlSources = listOf(""),
            generators = setOf(SHORT_NAME),
            isValidatingOnly = true
        )

        // Act
        createGluecodium(options).execute()

        // Assert
        verify(generator, never()).generate(any())
    }

    @Test
    fun useCachingInExecute() {
        // Arrange
        val options = Options(
            idlSources = listOf(""),
            outputDir = temporaryFolder.root.path,
            generators = setOf(SHORT_NAME),
            isEnableCaching = true
        )

        // Act
        createGluecodium(options).execute()

        // Verify
        Mockito.inOrder(cache).apply {
            verify(cache).updateCache(any(), any())
            verify(cache).write(true)
        }
    }

    @Test
    @PrepareForTest(
        Gluecodium::class,
        FileOutput::class,
        GeneratorSuite::class,
        CachingStrategyCreator::class
    )
    @Throws(Exception::class)
    fun ableToOutputFile() {
        // Arrange
        val mockFileOutput = mock(FileOutput::class.java)
        PowerMockito.whenNew(FileOutput::class.java).withAnyArguments().thenReturn(mockFileOutput)
        val options = Options(outputDir = OUTPUT_DIR)
        val mockFile = mock(File::class.java)
        PowerMockito.whenNew(File::class.java).withAnyArguments().thenReturn(mockFile)

        // Act, Assert
        assertTrue(Gluecodium(options).output("", GENERATED_FILES))
        verify(mockFileOutput, times(1)).output(ArgumentMatchers.anyList())
        verify(cache).updateCache(any(), any())
    }

    @Test
    @Throws(Exception::class)
    fun failWhenUnableToOpenOutputDirectory() {
        // Arrange
        val mockFileOutput = mock(FileOutput::class.java)
        PowerMockito.whenNew(FileOutput::class.java).withAnyArguments().thenReturn(mockFileOutput)
        Mockito.doThrow(IOException()).`when`(mockFileOutput).output(GENERATED_FILES)
        val options = Options(outputDir = "")

        // Act, Assert
        assertFalse(Gluecodium(options).output("", GENERATED_FILES))
    }

    @Test
    @Throws(IOException::class)
    fun mergeAndroidManifestsMergesTwoManifests() {
        // Arrange
        val basePath = Paths.get("src", "test", "resources", "android_manifests").toString()
        val baseManifestPath = Paths.get(basePath, "BaseAndroidManifest.xml").toString()
        val appendManifestPath = Paths.get(basePath, "AppendAndroidManifest.xml").toString()
        val mergedManifestPath = Paths.get(temporaryFolder.root.path, "MergedAndroidManifest.xml")
        val expectedMergedManifestPath = Paths.get(basePath, "ExpectedMergedAndroidManifest.xml")

        // Act
        val result = Gluecodium.mergeAndroidManifests(
            baseManifestPath, appendManifestPath, mergedManifestPath.toString()
        )

        // Assert
        assertTrue(result)
        val expectedMergedManifest = String(Files.readAllBytes(expectedMergedManifestPath))
        val actualMergedManifest = String(Files.readAllBytes(mergedManifestPath))
        assertEquals(expectedMergedManifest, actualMergedManifest)
    }

    @Test
    fun mergeAndroidManifestsReturnsFalseIfFirstFileDoesNotExist() {
        // Arrange
        val basePath = Paths.get("src", "test", "resources", "android_manifests").toString()
        val baseManifestPath = "INVALID_PATH"
        val appendManifestPath = Paths.get(basePath, "AppendAndroidManifest.xml").toString()
        val mergedManifestPath = Paths.get(temporaryFolder.root.path, "MergedAndroidManifest.xml")

        // Act
        val result = Gluecodium.mergeAndroidManifests(
            baseManifestPath, appendManifestPath, mergedManifestPath.toString()
        )

        // Assert
        assertFalse(result)
    }

    @Test
    fun mergeAndroidManifestsReturnsFalseIfSecondFileDoesNotExist() {
        // Arrange
        val basePath = Paths.get("src", "test", "resources", "android_manifests").toString()
        val baseManifestPath = Paths.get(basePath, "BaseAndroidManifest.xml").toString()
        val appendManifestPath = "INVALID_PATH"
        val mergedManifestPath = Paths.get(temporaryFolder.root.path, "MergedAndroidManifest.xml")

        // Act, assert
        assertFalse(
            Gluecodium.mergeAndroidManifests(
                baseManifestPath, appendManifestPath, mergedManifestPath.toString()
            )
        )
    }

    private fun createGluecodium(options: Options) = spyk(Gluecodium(options, modelLoader))

    companion object {
        private const val SHORT_NAME = "android"
        private const val FILE_NAME = "fileName"
        private const val OUTPUT_DIR = "someDir"
        private const val CONTENT = "someContent"
        private val FILE = GeneratedFile("", FILE_NAME)
        private val GENERATED_FILES = listOf(FILE)
    }
}
