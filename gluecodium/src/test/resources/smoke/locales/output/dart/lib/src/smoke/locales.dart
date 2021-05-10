import 'package:intl/locale.dart';
import 'package:library/src/_native_base.dart' as __lib;
import 'package:library/src/_token_cache.dart' as __lib;
import 'package:library/src/builtin_types__conversion.dart';
import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:library/src/_library_context.dart' as __lib;
abstract class Locales {
  /// Destroys the underlying native object.
  ///
  /// Call this to free memory when you no longer need this instance.
  /// Note that setting the instance to null will not destroy the underlying native object.
  void release();
  Locale localeMethod(Locale input);
  Locale get localeProperty;
  set localeProperty(Locale value);
}
class Locales_LocaleStruct {
  Locale localeField;
  Locales_LocaleStruct(this.localeField);
}
// Locales_LocaleStruct "private" section, not exported.
final _smokeLocalesLocalestructCreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('library_smoke_Locales_LocaleStruct_create_handle'));
final _smokeLocalesLocalestructReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('library_smoke_Locales_LocaleStruct_release_handle'));
final _smokeLocalesLocalestructGetFieldlocaleField = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('library_smoke_Locales_LocaleStruct_get_field_localeField'));
Pointer<Void> smoke_Locales_LocaleStruct_toFfi(Locales_LocaleStruct value) {
  final _localeFieldHandle = Locale_toFfi(value.localeField);
  final _result = _smokeLocalesLocalestructCreateHandle(_localeFieldHandle);
  Locale_releaseFfiHandle(_localeFieldHandle);
  return _result;
}
Locales_LocaleStruct smoke_Locales_LocaleStruct_fromFfi(Pointer<Void> handle) {
  final _localeFieldHandle = _smokeLocalesLocalestructGetFieldlocaleField(handle);
  try {
    return Locales_LocaleStruct(
      Locale_fromFfi(_localeFieldHandle)
    );
  } finally {
    Locale_releaseFfiHandle(_localeFieldHandle);
  }
}
void smoke_Locales_LocaleStruct_releaseFfiHandle(Pointer<Void> handle) => _smokeLocalesLocalestructReleaseHandle(handle);
// Nullable Locales_LocaleStruct
final _smoke_Locales_LocaleStructCreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('library_smoke_Locales_LocaleStruct_create_handle_nullable'));
final _smoke_Locales_LocaleStructReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('library_smoke_Locales_LocaleStruct_release_handle_nullable'));
final _smoke_Locales_LocaleStructGetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('library_smoke_Locales_LocaleStruct_get_value_nullable'));
Pointer<Void> smoke_Locales_LocaleStruct_toFfi_nullable(Locales_LocaleStruct value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = smoke_Locales_LocaleStruct_toFfi(value);
  final result = _smoke_Locales_LocaleStructCreateHandleNullable(_handle);
  smoke_Locales_LocaleStruct_releaseFfiHandle(_handle);
  return result;
}
Locales_LocaleStruct smoke_Locales_LocaleStruct_fromFfi_nullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _smoke_Locales_LocaleStructGetValueNullable(handle);
  final result = smoke_Locales_LocaleStruct_fromFfi(_handle);
  smoke_Locales_LocaleStruct_releaseFfiHandle(_handle);
  return result;
}
void smoke_Locales_LocaleStruct_releaseFfiHandle_nullable(Pointer<Void> handle) =>
  _smoke_Locales_LocaleStructReleaseHandleNullable(handle);
// End of Locales_LocaleStruct "private" section.
// Locales "private" section, not exported.
final _smokeLocalesCopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('library_smoke_Locales_copy_handle'));
final _smokeLocalesReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('library_smoke_Locales_release_handle'));
class Locales$Impl extends __lib.NativeBase implements Locales {
  Locales$Impl(Pointer<Void> handle) : super(handle);
  @override
  void release() {
    if (handle == null) return;
    __lib.uncacheObject(this);
    __lib.ffiUncacheToken(handle, __lib.LibraryContext.isolateId);
    _smokeLocalesReleaseHandle(handle);
    handle = null;
  }
  @override
  Locale localeMethod(Locale input) {
    final _localeMethodFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32, Pointer<Void>), Pointer<Void> Function(Pointer<Void>, int, Pointer<Void>)>('library_smoke_Locales_localeMethod__Locale'));
    final _inputHandle = Locale_toFfi(input);
    final _handle = this.handle;
    final __resultHandle = _localeMethodFfi(_handle, __lib.LibraryContext.isolateId, _inputHandle);
    Locale_releaseFfiHandle(_inputHandle);
    try {
      return Locale_fromFfi(__resultHandle);
    } finally {
      Locale_releaseFfiHandle(__resultHandle);
    }
  }
  @override
  Locale get localeProperty {
    final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('library_smoke_Locales_localeProperty_get'));
    final _handle = this.handle;
    final __resultHandle = _getFfi(_handle, __lib.LibraryContext.isolateId);
    try {
      return Locale_fromFfi(__resultHandle);
    } finally {
      Locale_releaseFfiHandle(__resultHandle);
    }
  }
  @override
  set localeProperty(Locale value) {
    final _setFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Void Function(Pointer<Void>, Int32, Pointer<Void>), void Function(Pointer<Void>, int, Pointer<Void>)>('library_smoke_Locales_localeProperty_set__Locale'));
    final _valueHandle = Locale_toFfi(value);
    final _handle = this.handle;
    final __resultHandle = _setFfi(_handle, __lib.LibraryContext.isolateId, _valueHandle);
    Locale_releaseFfiHandle(_valueHandle);
    try {
      return (__resultHandle);
    } finally {
      (__resultHandle);
    }
  }
}
Pointer<Void> smoke_Locales_toFfi(Locales value) =>
  _smokeLocalesCopyHandle((value as __lib.NativeBase).handle);
Locales smoke_Locales_fromFfi(Pointer<Void> handle) {
  final isolateId = __lib.LibraryContext.isolateId;
  final token = __lib.ffiGetCachedToken(handle, isolateId);
  final instance = __lib.instanceCache[token] as Locales;
  if (instance != null) return instance;
  final _copiedHandle = _smokeLocalesCopyHandle(handle);
  final result = Locales$Impl(_copiedHandle);
  __lib.ffiCacheToken(_copiedHandle, isolateId, __lib.cacheObject(result));
  return result;
}
void smoke_Locales_releaseFfiHandle(Pointer<Void> handle) =>
  _smokeLocalesReleaseHandle(handle);
Pointer<Void> smoke_Locales_toFfi_nullable(Locales value) =>
  value != null ? smoke_Locales_toFfi(value) : Pointer<Void>.fromAddress(0);
Locales smoke_Locales_fromFfi_nullable(Pointer<Void> handle) =>
  handle.address != 0 ? smoke_Locales_fromFfi(handle) : null;
void smoke_Locales_releaseFfiHandle_nullable(Pointer<Void> handle) =>
  _smokeLocalesReleaseHandle(handle);
// End of Locales "private" section.
