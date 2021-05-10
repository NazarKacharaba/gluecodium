import 'package:library/src/_native_base.dart' as __lib;
import 'package:library/src/_token_cache.dart' as __lib;
import 'package:library/src/builtin_types__conversion.dart';
import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:library/src/_library_context.dart' as __lib;
abstract class EnableIfEnabled {
  /// Destroys the underlying native object.
  ///
  /// Call this to free memory when you no longer need this instance.
  /// Note that setting the instance to null will not destroy the underlying native object.
  void release();
  static enableIfUnquoted() => EnableIfEnabled$Impl.enableIfUnquoted();
  static enableIfUnquotedList() => EnableIfEnabled$Impl.enableIfUnquotedList();
  static enableIfQuoted() => EnableIfEnabled$Impl.enableIfQuoted();
  static enableIfQuotedList() => EnableIfEnabled$Impl.enableIfQuotedList();
  static enableIfTagged() => EnableIfEnabled$Impl.enableIfTagged();
  static enableIfTaggedList() => EnableIfEnabled$Impl.enableIfTaggedList();
  static enableIfMixedList() => EnableIfEnabled$Impl.enableIfMixedList();
}
// EnableIfEnabled "private" section, not exported.
final _smokeEnableifenabledCopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('library_smoke_EnableIfEnabled_copy_handle'));
final _smokeEnableifenabledReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('library_smoke_EnableIfEnabled_release_handle'));
class EnableIfEnabled$Impl extends __lib.NativeBase implements EnableIfEnabled {
  EnableIfEnabled$Impl(Pointer<Void> handle) : super(handle);
  @override
  void release() {
    if (handle == null) return;
    __lib.uncacheObject(this);
    __lib.ffiUncacheToken(handle, __lib.LibraryContext.isolateId);
    _smokeEnableifenabledReleaseHandle(handle);
    handle = null;
  }
  static enableIfUnquoted() {
    final _enableIfUnquotedFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Void Function(Int32), void Function(int)>('library_smoke_EnableIfEnabled_enableIfUnquoted'));
    final __resultHandle = _enableIfUnquotedFfi(__lib.LibraryContext.isolateId);
    try {
      return (__resultHandle);
    } finally {
      (__resultHandle);
    }
  }
  static enableIfUnquotedList() {
    final _enableIfUnquotedListFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Void Function(Int32), void Function(int)>('library_smoke_EnableIfEnabled_enableIfUnquotedList'));
    final __resultHandle = _enableIfUnquotedListFfi(__lib.LibraryContext.isolateId);
    try {
      return (__resultHandle);
    } finally {
      (__resultHandle);
    }
  }
  static enableIfQuoted() {
    final _enableIfQuotedFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Void Function(Int32), void Function(int)>('library_smoke_EnableIfEnabled_enableIfQuoted'));
    final __resultHandle = _enableIfQuotedFfi(__lib.LibraryContext.isolateId);
    try {
      return (__resultHandle);
    } finally {
      (__resultHandle);
    }
  }
  static enableIfQuotedList() {
    final _enableIfQuotedListFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Void Function(Int32), void Function(int)>('library_smoke_EnableIfEnabled_enableIfQuotedList'));
    final __resultHandle = _enableIfQuotedListFfi(__lib.LibraryContext.isolateId);
    try {
      return (__resultHandle);
    } finally {
      (__resultHandle);
    }
  }
  static enableIfTagged() {
    final _enableIfTaggedFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Void Function(Int32), void Function(int)>('library_smoke_EnableIfEnabled_enableIfTagged'));
    final __resultHandle = _enableIfTaggedFfi(__lib.LibraryContext.isolateId);
    try {
      return (__resultHandle);
    } finally {
      (__resultHandle);
    }
  }
  static enableIfTaggedList() {
    final _enableIfTaggedListFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Void Function(Int32), void Function(int)>('library_smoke_EnableIfEnabled_enableIfTaggedList'));
    final __resultHandle = _enableIfTaggedListFfi(__lib.LibraryContext.isolateId);
    try {
      return (__resultHandle);
    } finally {
      (__resultHandle);
    }
  }
  static enableIfMixedList() {
    final _enableIfMixedListFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Void Function(Int32), void Function(int)>('library_smoke_EnableIfEnabled_enableIfMixedList'));
    final __resultHandle = _enableIfMixedListFfi(__lib.LibraryContext.isolateId);
    try {
      return (__resultHandle);
    } finally {
      (__resultHandle);
    }
  }
}
Pointer<Void> smoke_EnableIfEnabled_toFfi(EnableIfEnabled value) =>
  _smokeEnableifenabledCopyHandle((value as __lib.NativeBase).handle);
EnableIfEnabled smoke_EnableIfEnabled_fromFfi(Pointer<Void> handle) {
  final isolateId = __lib.LibraryContext.isolateId;
  final token = __lib.ffiGetCachedToken(handle, isolateId);
  final instance = __lib.instanceCache[token] as EnableIfEnabled;
  if (instance != null) return instance;
  final _copiedHandle = _smokeEnableifenabledCopyHandle(handle);
  final result = EnableIfEnabled$Impl(_copiedHandle);
  __lib.ffiCacheToken(_copiedHandle, isolateId, __lib.cacheObject(result));
  return result;
}
void smoke_EnableIfEnabled_releaseFfiHandle(Pointer<Void> handle) =>
  _smokeEnableifenabledReleaseHandle(handle);
Pointer<Void> smoke_EnableIfEnabled_toFfi_nullable(EnableIfEnabled value) =>
  value != null ? smoke_EnableIfEnabled_toFfi(value) : Pointer<Void>.fromAddress(0);
EnableIfEnabled smoke_EnableIfEnabled_fromFfi_nullable(Pointer<Void> handle) =>
  handle.address != 0 ? smoke_EnableIfEnabled_fromFfi(handle) : null;
void smoke_EnableIfEnabled_releaseFfiHandle_nullable(Pointer<Void> handle) =>
  _smokeEnableifenabledReleaseHandle(handle);
// End of EnableIfEnabled "private" section.
