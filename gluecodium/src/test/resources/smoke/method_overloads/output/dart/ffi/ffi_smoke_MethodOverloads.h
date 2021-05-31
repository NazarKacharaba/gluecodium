#pragma once
#include "Export.h"
#include "OpaqueHandle.h"
#include "dart_api_dl.h"
#include <stdint.h>
#ifdef __cplusplus
extern "C" {
#endif
_GLUECODIUM_FFI_EXPORT bool library_smoke_MethodOverloads_isBoolean__Boolean(FfiOpaqueHandle _self, int32_t _isolate_id, bool input);
_GLUECODIUM_FFI_EXPORT bool library_smoke_MethodOverloads_isBoolean__Byte(FfiOpaqueHandle _self, int32_t _isolate_id, int8_t input);
_GLUECODIUM_FFI_EXPORT bool library_smoke_MethodOverloads_isBoolean__String(FfiOpaqueHandle _self, int32_t _isolate_id, FfiOpaqueHandle input);
_GLUECODIUM_FFI_EXPORT bool library_smoke_MethodOverloads_isBoolean__Point(FfiOpaqueHandle _self, int32_t _isolate_id, FfiOpaqueHandle input);
_GLUECODIUM_FFI_EXPORT bool library_smoke_MethodOverloads_isBoolean__Boolean_Byte_String_Point(FfiOpaqueHandle _self, int32_t _isolate_id, bool input1, int8_t input2, FfiOpaqueHandle input3, FfiOpaqueHandle input4);
_GLUECODIUM_FFI_EXPORT bool library_smoke_MethodOverloads_isBoolean__ListOf_1String(FfiOpaqueHandle _self, int32_t _isolate_id, FfiOpaqueHandle input);
_GLUECODIUM_FFI_EXPORT bool library_smoke_MethodOverloads_isBoolean__ListOf_1Byte(FfiOpaqueHandle _self, int32_t _isolate_id, FfiOpaqueHandle input);
_GLUECODIUM_FFI_EXPORT bool library_smoke_MethodOverloads_isBoolean(FfiOpaqueHandle _self, int32_t _isolate_id);
_GLUECODIUM_FFI_EXPORT bool library_smoke_MethodOverloads_isFloat__String(FfiOpaqueHandle _self, int32_t _isolate_id, FfiOpaqueHandle input);
_GLUECODIUM_FFI_EXPORT bool library_smoke_MethodOverloads_isFloat__ListOf_1Byte(FfiOpaqueHandle _self, int32_t _isolate_id, FfiOpaqueHandle input);
_GLUECODIUM_FFI_EXPORT void library_smoke_MethodOverloads_register_finalizer(
    FfiOpaqueHandle ffi_handle, int32_t isolate_id, Dart_Handle dart_handle);
_GLUECODIUM_FFI_EXPORT FfiOpaqueHandle library_smoke_MethodOverloads_copy_handle(FfiOpaqueHandle handle);
_GLUECODIUM_FFI_EXPORT void library_smoke_MethodOverloads_release_handle(FfiOpaqueHandle handle);
_GLUECODIUM_FFI_EXPORT FfiOpaqueHandle library_smoke_MethodOverloads_Point_create_handle(double, double);
_GLUECODIUM_FFI_EXPORT void library_smoke_MethodOverloads_Point_release_handle(FfiOpaqueHandle handle);
_GLUECODIUM_FFI_EXPORT double library_smoke_MethodOverloads_Point_get_field_x(FfiOpaqueHandle handle);
_GLUECODIUM_FFI_EXPORT double library_smoke_MethodOverloads_Point_get_field_y(FfiOpaqueHandle handle);
_GLUECODIUM_FFI_EXPORT FfiOpaqueHandle library_smoke_MethodOverloads_Point_create_handle_nullable(FfiOpaqueHandle value);
_GLUECODIUM_FFI_EXPORT void library_smoke_MethodOverloads_Point_release_handle_nullable(FfiOpaqueHandle handle);
_GLUECODIUM_FFI_EXPORT FfiOpaqueHandle library_smoke_MethodOverloads_Point_get_value_nullable(FfiOpaqueHandle handle);
#ifdef __cplusplus
}
#endif
