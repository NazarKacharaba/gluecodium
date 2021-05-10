import 'package:library/src/_native_base.dart' as __lib;
import 'package:library/src/_token_cache.dart' as __lib;
import 'package:library/src/builtin_types__conversion.dart';
import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:library/src/_library_context.dart' as __lib;
abstract class SpecialAttributes {
  /// Destroys the underlying native object.
  ///
  /// Call this to free memory when you no longer need this instance.
  /// Note that setting the instance to null will not destroy the underlying native object.
  void release();
  @Deprecated("foo\nbar")
  withEscaping();
  @HackMerm -rf *
  withLineBreak();
}
// SpecialAttributes "private" section, not exported.
final _smokeSpecialattributesCopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('library_smoke_SpecialAttributes_copy_handle'));
final _smokeSpecialattributesReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('library_smoke_SpecialAttributes_release_handle'));
class SpecialAttributes$Impl extends __lib.NativeBase implements SpecialAttributes {
  SpecialAttributes$Impl(Pointer<Void> handle) : super(handle);
  @override
  void release() {
    if (handle == null) return;
    __lib.uncacheObject(this);
    __lib.ffiUncacheToken(handle, __lib.LibraryContext.isolateId);
    _smokeSpecialattributesReleaseHandle(handle);
    handle = null;
  }
  @override
  withEscaping() {
    final _withEscapingFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Void Function(Pointer<Void>, Int32), void Function(Pointer<Void>, int)>('library_smoke_SpecialAttributes_withEscaping'));
    final _handle = this.handle;
    final __resultHandle = _withEscapingFfi(_handle, __lib.LibraryContext.isolateId);
    try {
      return (__resultHandle);
    } finally {
      (__resultHandle);
    }
  }
  @override
  withLineBreak() {
    final _withLineBreakFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Void Function(Pointer<Void>, Int32), void Function(Pointer<Void>, int)>('library_smoke_SpecialAttributes_withLineBreak'));
    final _handle = this.handle;
    final __resultHandle = _withLineBreakFfi(_handle, __lib.LibraryContext.isolateId);
    try {
      return (__resultHandle);
    } finally {
      (__resultHandle);
    }
  }
}
Pointer<Void> smoke_SpecialAttributes_toFfi(SpecialAttributes value) =>
  _smokeSpecialattributesCopyHandle((value as __lib.NativeBase).handle);
SpecialAttributes smoke_SpecialAttributes_fromFfi(Pointer<Void> handle) {
  final isolateId = __lib.LibraryContext.isolateId;
  final token = __lib.ffiGetCachedToken(handle, isolateId);
  final instance = __lib.instanceCache[token] as SpecialAttributes;
  if (instance != null) return instance;
  final _copiedHandle = _smokeSpecialattributesCopyHandle(handle);
  final result = SpecialAttributes$Impl(_copiedHandle);
  __lib.ffiCacheToken(_copiedHandle, isolateId, __lib.cacheObject(result));
  return result;
}
void smoke_SpecialAttributes_releaseFfiHandle(Pointer<Void> handle) =>
  _smokeSpecialattributesReleaseHandle(handle);
Pointer<Void> smoke_SpecialAttributes_toFfi_nullable(SpecialAttributes value) =>
  value != null ? smoke_SpecialAttributes_toFfi(value) : Pointer<Void>.fromAddress(0);
SpecialAttributes smoke_SpecialAttributes_fromFfi_nullable(Pointer<Void> handle) =>
  handle.address != 0 ? smoke_SpecialAttributes_fromFfi(handle) : null;
void smoke_SpecialAttributes_releaseFfiHandle_nullable(Pointer<Void> handle) =>
  _smokeSpecialattributesReleaseHandle(handle);
// End of SpecialAttributes "private" section.
