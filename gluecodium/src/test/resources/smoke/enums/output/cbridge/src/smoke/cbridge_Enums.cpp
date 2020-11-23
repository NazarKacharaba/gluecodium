//
//
#include "cbridge/include/smoke/cbridge_Enums.h"
#include "cbridge_internal/include/BaseHandleImpl.h"
#include "cbridge_internal/include/TypeInitRepository.h"
#include "cbridge_internal/include/WrapperCache.h"
#include "gluecodium/Optional.h"
#include "gluecodium/TypeRepository.h"
#include "smoke/Enums.h"
#include <memory>
#include <new>
#include <string>
void smoke_Enums_release_handle(_baseRef handle) {
    delete get_pointer<::std::shared_ptr< ::smoke::Enums >>(handle);
}
_baseRef smoke_Enums_copy_handle(_baseRef handle) {
    return handle
        ? reinterpret_cast<_baseRef>(checked_pointer_copy(*get_pointer<::std::shared_ptr< ::smoke::Enums >>(handle)))
        : 0;
}
const void* smoke_Enums_get_swift_object_from_wrapper_cache(_baseRef handle) {
    return handle
        ? ::gluecodium::get_wrapper_cache().get_cached_wrapper(get_pointer<::std::shared_ptr< ::smoke::Enums >>(handle)->get())
        : nullptr;
}
void smoke_Enums_cache_swift_object_wrapper(_baseRef handle, const void* swift_pointer) {
    if (!handle) return;
    ::gluecodium::get_wrapper_cache().cache_wrapper(get_pointer<::std::shared_ptr< ::smoke::Enums >>(handle)->get(), swift_pointer);
}
void smoke_Enums_remove_swift_object_from_wrapper_cache(_baseRef handle) {
    if (!::gluecodium::WrapperCache::is_alive) return;
    ::gluecodium::get_wrapper_cache().remove_cached_wrapper(get_pointer<::std::shared_ptr< ::smoke::Enums >>(handle)->get());
}
_baseRef
smoke_Enums_ErrorStruct_create_handle( smoke_Enums_InternalErrorCode type, _baseRef message )
{
    ::smoke::Enums::ErrorStruct* _struct = new ( ::std::nothrow ) ::smoke::Enums::ErrorStruct();
    _struct->type = static_cast<::smoke::Enums::InternalErrorCode>( type );
    _struct->message = Conversion<::std::string>::toCpp( message );
    return reinterpret_cast<_baseRef>( _struct );
}
void
smoke_Enums_ErrorStruct_release_handle( _baseRef handle )
{
    delete get_pointer<::smoke::Enums::ErrorStruct>( handle );
}
_baseRef
smoke_Enums_ErrorStruct_create_optional_handle(smoke_Enums_InternalErrorCode type, _baseRef message)
{
    auto _struct = new ( ::std::nothrow ) ::gluecodium::optional<::smoke::Enums::ErrorStruct>( ::smoke::Enums::ErrorStruct( ) );
    (*_struct)->type = static_cast<::smoke::Enums::InternalErrorCode>( type );
    (*_struct)->message = Conversion<::std::string>::toCpp( message );
    return reinterpret_cast<_baseRef>( _struct );
}
_baseRef
smoke_Enums_ErrorStruct_unwrap_optional_handle( _baseRef handle )
{
    return reinterpret_cast<_baseRef>( &**reinterpret_cast<::gluecodium::optional<::smoke::Enums::ErrorStruct>*>( handle ) );
}
void smoke_Enums_ErrorStruct_release_optional_handle(_baseRef handle) {
    delete reinterpret_cast<::gluecodium::optional<::smoke::Enums::ErrorStruct>*>( handle );
}
smoke_Enums_InternalErrorCode smoke_Enums_ErrorStruct_type_get(_baseRef handle) {
    auto struct_pointer = get_pointer<const ::smoke::Enums::ErrorStruct>(handle);
    return static_cast<smoke_Enums_InternalErrorCode>(struct_pointer->type);
}
_baseRef smoke_Enums_ErrorStruct_message_get(_baseRef handle) {
    auto struct_pointer = get_pointer<const ::smoke::Enums::ErrorStruct>(handle);
    return Conversion<::std::string>::toBaseRef(struct_pointer->message);
}
smoke_Enums_SimpleEnum smoke_Enums_methodWithEnumeration(smoke_Enums_SimpleEnum input) {
    return static_cast<smoke_Enums_SimpleEnum>(::smoke::Enums::method_with_enumeration(static_cast<::smoke::Enums::SimpleEnum>(input)));
}
smoke_Enums_InternalErrorCode smoke_Enums_flipEnumValue(smoke_Enums_InternalErrorCode input) {
    return static_cast<smoke_Enums_InternalErrorCode>(::smoke::Enums::flip_enum_value(static_cast<::smoke::Enums::InternalErrorCode>(input)));
}
smoke_Enums_InternalErrorCode smoke_Enums_extractEnumFromStruct(_baseRef input) {
    return static_cast<smoke_Enums_InternalErrorCode>(::smoke::Enums::extract_enum_from_struct(Conversion<::smoke::Enums::ErrorStruct>::toCpp(input)));
}
_baseRef smoke_Enums_createStructWithEnumInside(smoke_Enums_InternalErrorCode type, _baseRef message) {
    return Conversion<::smoke::Enums::ErrorStruct>::toBaseRef(::smoke::Enums::create_struct_with_enum_inside(static_cast<::smoke::Enums::InternalErrorCode>(type), Conversion<::std::string>::toCpp(message)));
}
