//
//
#pragma once
#ifdef __cplusplus
extern "C" {
#endif
#include "cbridge/include/BaseHandle.h"
#include "cbridge/include/Export.h"
#include "cbridge/include/StringHandle.h"
#include "cbridge/include/smoke/cbridge_PointerEquatableClass.h"
#include <stdbool.h>
#include <stdint.h>
_GLUECODIUM_C_EXPORT _baseRef smoke_EquatableClass_EquatableStruct_create_handle(int32_t intField, _baseRef stringField, _baseRef nestedEquatableInstance, _baseRef nestedPointerEquatableInstance);
_GLUECODIUM_C_EXPORT void smoke_EquatableClass_EquatableStruct_release_handle(_baseRef handle);
_GLUECODIUM_C_EXPORT _baseRef smoke_EquatableClass_EquatableStruct_create_optional_handle(int32_t intField, _baseRef stringField, _baseRef nestedEquatableInstance, _baseRef nestedPointerEquatableInstance);
_GLUECODIUM_C_EXPORT _baseRef smoke_EquatableClass_EquatableStruct_unwrap_optional_handle(_baseRef handle);
_GLUECODIUM_C_EXPORT void smoke_EquatableClass_EquatableStruct_release_optional_handle(_baseRef handle);
_GLUECODIUM_C_EXPORT int32_t smoke_EquatableClass_EquatableStruct_intField_get(_baseRef handle);
_GLUECODIUM_C_EXPORT _baseRef smoke_EquatableClass_EquatableStruct_stringField_get(_baseRef handle);
_GLUECODIUM_C_EXPORT _baseRef smoke_EquatableClass_EquatableStruct_nestedEquatableInstance_get(_baseRef handle);
_GLUECODIUM_C_EXPORT _baseRef smoke_EquatableClass_EquatableStruct_nestedPointerEquatableInstance_get(_baseRef handle);
_GLUECODIUM_C_EXPORT void smoke_EquatableClass_release_handle(_baseRef handle);
_GLUECODIUM_C_EXPORT _baseRef smoke_EquatableClass_copy_handle(_baseRef handle);
_GLUECODIUM_C_EXPORT const void* smoke_EquatableClass_get_swift_object_from_wrapper_cache(_baseRef handle);
_GLUECODIUM_C_EXPORT void smoke_EquatableClass_cache_swift_object_wrapper(_baseRef handle, const void* swift_pointer);
_GLUECODIUM_C_EXPORT void smoke_EquatableClass_remove_swift_object_from_wrapper_cache(_baseRef handle);
_GLUECODIUM_C_EXPORT bool smoke_EquatableClass_equal(_baseRef lhs, _baseRef rhs);
_GLUECODIUM_C_EXPORT uint64_t smoke_EquatableClass_hash(_baseRef handle);
#ifdef __cplusplus
}
#endif
