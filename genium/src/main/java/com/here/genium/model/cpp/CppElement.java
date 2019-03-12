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

package com.here.genium.model.cpp;

import com.here.genium.model.common.Streamable;
import lombok.EqualsAndHashCode;

@EqualsAndHashCode(callSuper = false)
public abstract class CppElement extends Streamable<CppElement> {

  public final String name;
  public final String fullyQualifiedName;

  protected CppElement(final String name, final String fullyQualifiedName) {
    super();
    this.name = name;
    this.fullyQualifiedName = fullyQualifiedName;
  }
}
