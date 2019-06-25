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

package com.here.genium.generator.cbridge

import com.here.genium.model.cbridge.CArray
import com.here.genium.model.cbridge.CFunction
import com.here.genium.model.cbridge.CInterface
import com.here.genium.model.cbridge.CType
import com.here.genium.model.common.Include
import java.nio.file.Paths

object CBridgeComponents {
    val PROXY_CACHE_FILENAME = Paths.get(
        CBridgeNameRules.CBRIDGE_INTERNAL, CBridgeNameRules.INCLUDE_DIR, "CachedProxyBase.h"
    ).toString()

    fun collectImplementationIncludes(cInterface: CInterface): List<Include> {
        val includes = mutableListOf<Include>()

        val functions = mutableListOf<CFunction>()
        functions.addAll(cInterface.functions)
        functions.addAll(cInterface.inheritedFunctions)
        for (function in functions) {
            includes.addAll(collectFunctionBodyIncludes(function))
        }
        for (struct in cInterface.structs) {
            includes.addAll(struct.mappedType.includes)
            for (field in struct.fields) {
                includes.addAll(field.type.includes)
            }
            for (function in struct.methods) {
                includes.addAll(collectFunctionBodyIncludes(function))
            }
        }
        if (cInterface.selfType != null) {
            includes.addAll(cInterface.selfType.includes)
        }
        for (map in cInterface.maps) {
            includes.add(map.include)
        }
        for (set in cInterface.sets) {
            includes.add(set.include)
        }
        for (enumeration in cInterface.enums) {
            includes.addAll(enumeration.mappedType.includes)
        }

        return includes
    }

    fun collectPrivateHeaderIncludes(cInterface: CInterface): List<Include> {
        val includes = mutableListOf<Include>()
        for (struct in cInterface.structs) {
            includes.addAll(struct.mappedType.includes)
        }
        if (cInterface.selfType != null) {
            includes.addAll(cInterface.selfType.includes)
        }
        return includes
    }

    fun collectHeaderIncludes(cInterface: CInterface): List<Include> {
        val includes = mutableListOf<Include>()

        for (function in cInterface.functions) {
            includes.addAll(collectFunctionSignatureIncludes(function))
        }
        for (struct in cInterface.structs) {
            for (field in struct.fields) {
                includes.addAll(field.type.functionReturnType.includes)
                includes.addAll(field.type.cType.includes)
            }
            for (function in struct.methods) {
                includes.addAll(collectFunctionSignatureIncludes(function))
            }
        }
        for (enumType in cInterface.enums) {
            includes.addAll(enumType.includes)
        }
        for (map in cInterface.maps) {
            includes.addAll(map.keyType.functionReturnType.includes)
            includes.addAll(map.valueType.functionReturnType.includes)
        }
        for (set in cInterface.sets) {
            includes.addAll(set.elementType.functionReturnType.includes)
        }
        if (cInterface.maps.isNotEmpty() || cInterface.hasEquatableType) {
            includes.add(CType.BOOL_INCLUDE)
        }

        return includes
    }

    fun collectImplementationIncludes(arrays: Collection<CArray>) = arrays.flatMap { it.includes() }

    fun collectHeaderIncludes(arrays: Collection<CArray>) =
        arrays.flatMap { it.returnTypeIncludes() }

    private fun collectFunctionSignatureIncludes(function: CFunction): List<Include> {
        val includes = mutableListOf<Include>()
        for (parameter in function.parameters) {
            includes.addAll(parameter.signatureIncludes)
        }
        includes.addAll(function.returnType.functionReturnType.includes)
        if (function.error != null) {
            includes.addAll(function.error.functionReturnType.includes)
        }
        return includes
    }

    private fun collectFunctionBodyIncludes(function: CFunction): Collection<Include> {
        val includes = mutableListOf<Include>()
        for (parameter in function.parameters) {
            includes.addAll(parameter.mappedType.includes)
        }
        includes.addAll(function.returnType.includes)
        includes.addAll(function.delegateCallIncludes)
        if (function.selfParameter != null) {
            includes.addAll(function.selfParameter.mappedType.includes)
        }
        if (function.error != null) {
            includes.addAll(function.error.includes)
        }
        return includes
    }
}
