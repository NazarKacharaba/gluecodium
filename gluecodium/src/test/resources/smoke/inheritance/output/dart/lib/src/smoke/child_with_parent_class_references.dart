import 'package:library/src/_native_base.dart' as __lib;
import 'package:library/src/_token_cache.dart' as __lib;
import 'package:library/src/_type_repository.dart' as __lib;
import 'package:library/src/builtin_types__conversion.dart';
import 'package:library/src/smoke/child_class_from_class.dart';
import 'package:library/src/smoke/parent_class.dart';
import 'package:library/src/smoke/parent_with_class_references.dart';
import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:library/src/_library_context.dart' as __lib;
abstract class ChildWithParentClassReferences implements ParentWithClassReferences {
  /// Destroys the underlying native object.
  ///
  /// Call this to free memory when you no longer need this instance.
  /// Note that setting the instance to null will not destroy the underlying native object.
  void release();
}
// ChildWithParentClassReferences "private" section, not exported.
final _smokeChildwithparentclassreferencesCopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('library_smoke_ChildWithParentClassReferences_copy_handle'));
final _smokeChildwithparentclassreferencesReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('library_smoke_ChildWithParentClassReferences_release_handle'));
final _smokeChildwithparentclassreferencesGetTypeId = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('library_smoke_ChildWithParentClassReferences_get_type_id'));
class ChildWithParentClassReferences$Impl extends __lib.NativeBase implements ChildWithParentClassReferences {
  ChildWithParentClassReferences$Impl(Pointer<Void> handle) : super(handle);
  @override
  void release() {
    if (handle == null) return;
    __lib.uncacheObject(this);
    __lib.ffiUncacheToken(handle, __lib.LibraryContext.isolateId);
    _smokeChildwithparentclassreferencesReleaseHandle(handle);
    handle = null;
  }
  @override
  ChildClassFromClass classFunction() {
    final _classFunctionFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('library_smoke_ParentWithClassReferences_classFunction'));
    final _handle = this.handle;
    final __resultHandle = _classFunctionFfi(_handle, __lib.LibraryContext.isolateId);
    try {
      return smoke_ChildClassFromClass_fromFfi(__resultHandle);
    } finally {
      smoke_ChildClassFromClass_releaseFfiHandle(__resultHandle);
    }
  }
  @override
  ParentClass get classProperty {
    final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('library_smoke_ParentWithClassReferences_classProperty_get'));
    final _handle = this.handle;
    final __resultHandle = _getFfi(_handle, __lib.LibraryContext.isolateId);
    try {
      return smoke_ParentClass_fromFfi(__resultHandle);
    } finally {
      smoke_ParentClass_releaseFfiHandle(__resultHandle);
    }
  }
  @override
  set classProperty(ParentClass value) {
    final _setFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Void Function(Pointer<Void>, Int32, Pointer<Void>), void Function(Pointer<Void>, int, Pointer<Void>)>('library_smoke_ParentWithClassReferences_classProperty_set__ParentClass'));
    final _valueHandle = smoke_ParentClass_toFfi(value);
    final _handle = this.handle;
    final __resultHandle = _setFfi(_handle, __lib.LibraryContext.isolateId, _valueHandle);
    smoke_ParentClass_releaseFfiHandle(_valueHandle);
    try {
      return (__resultHandle);
    } finally {
      (__resultHandle);
    }
  }
}
Pointer<Void> smoke_ChildWithParentClassReferences_toFfi(ChildWithParentClassReferences value) =>
  _smokeChildwithparentclassreferencesCopyHandle((value as __lib.NativeBase).handle);
ChildWithParentClassReferences smoke_ChildWithParentClassReferences_fromFfi(Pointer<Void> handle) {
  final isolateId = __lib.LibraryContext.isolateId;
  final token = __lib.ffiGetCachedToken(handle, isolateId);
  final instance = __lib.instanceCache[token] as ChildWithParentClassReferences;
  if (instance != null) return instance;
  final _typeIdHandle = _smokeChildwithparentclassreferencesGetTypeId(handle);
  final factoryConstructor = __lib.typeRepository[String_fromFfi(_typeIdHandle)];
  String_releaseFfiHandle(_typeIdHandle);
  final _copiedHandle = _smokeChildwithparentclassreferencesCopyHandle(handle);
  final result = factoryConstructor != null
    ? factoryConstructor(_copiedHandle)
    : ChildWithParentClassReferences$Impl(_copiedHandle);
  __lib.ffiCacheToken(_copiedHandle, isolateId, __lib.cacheObject(result));
  return result;
}
void smoke_ChildWithParentClassReferences_releaseFfiHandle(Pointer<Void> handle) =>
  _smokeChildwithparentclassreferencesReleaseHandle(handle);
Pointer<Void> smoke_ChildWithParentClassReferences_toFfi_nullable(ChildWithParentClassReferences value) =>
  value != null ? smoke_ChildWithParentClassReferences_toFfi(value) : Pointer<Void>.fromAddress(0);
ChildWithParentClassReferences smoke_ChildWithParentClassReferences_fromFfi_nullable(Pointer<Void> handle) =>
  handle.address != 0 ? smoke_ChildWithParentClassReferences_fromFfi(handle) : null;
void smoke_ChildWithParentClassReferences_releaseFfiHandle_nullable(Pointer<Void> handle) =>
  _smokeChildwithparentclassreferencesReleaseHandle(handle);
// End of ChildWithParentClassReferences "private" section.
