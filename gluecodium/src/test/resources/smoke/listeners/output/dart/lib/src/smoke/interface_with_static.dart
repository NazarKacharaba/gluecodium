import 'package:library/src/_native_base.dart' as __lib;
import 'package:library/src/_token_cache.dart' as __lib;
import 'package:library/src/_type_repository.dart' as __lib;
import 'package:library/src/builtin_types__conversion.dart';
import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:library/src/_library_context.dart' as __lib;
abstract class InterfaceWithStatic {
  InterfaceWithStatic();
  factory InterfaceWithStatic.fromLambdas({
    @required String Function() lambda_regularFunction,
    @required String Function() lambda_regularProperty_get,
    @required void Function(String) lambda_regularProperty_set,
  }) => InterfaceWithStatic$Lambdas(
    lambda_regularFunction,
    lambda_regularProperty_get,
    lambda_regularProperty_set,
  );
  /// Destroys the underlying native object.
  ///
  /// Call this to free memory when you no longer need this instance.
  /// Note that setting the instance to null will not destroy the underlying native object.
  void release() {}
  String regularFunction();
  static String staticFunction() => InterfaceWithStatic$Impl.staticFunction();
  String get regularProperty;
  set regularProperty(String value);
  static String get staticProperty => InterfaceWithStatic$Impl.staticProperty;
  static set staticProperty(String value) { InterfaceWithStatic$Impl.staticProperty = value; }
}
// InterfaceWithStatic "private" section, not exported.
final _smokeInterfacewithstaticCopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('library_smoke_InterfaceWithStatic_copy_handle'));
final _smokeInterfacewithstaticReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('library_smoke_InterfaceWithStatic_release_handle'));
final _smokeInterfacewithstaticCreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64, Int32, Pointer, Pointer, Pointer, Pointer),
    Pointer<Void> Function(int, int, Pointer, Pointer, Pointer, Pointer)
  >('library_smoke_InterfaceWithStatic_create_proxy'));
final _smokeInterfacewithstaticGetTypeId = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('library_smoke_InterfaceWithStatic_get_type_id'));
class InterfaceWithStatic$Lambdas implements InterfaceWithStatic {
  String Function() lambda_regularFunction;
  String Function() lambda_regularProperty_get;
  void Function(String) lambda_regularProperty_set;
  InterfaceWithStatic$Lambdas(
    this.lambda_regularFunction,
    this.lambda_regularProperty_get,
    this.lambda_regularProperty_set,
  );
  @override
  void release() {}
  @override
  String regularFunction() =>
    lambda_regularFunction();
  @override
  String get regularProperty => lambda_regularProperty_get();
  @override
  set regularProperty(String value) => lambda_regularProperty_set(value);
}
class InterfaceWithStatic$Impl extends __lib.NativeBase implements InterfaceWithStatic {
  InterfaceWithStatic$Impl(Pointer<Void> handle) : super(handle);
  @override
  void release() {
    if (handle == null) return;
    __lib.uncacheObject(this);
    __lib.ffiUncacheToken(handle, __lib.LibraryContext.isolateId);
    _smokeInterfacewithstaticReleaseHandle(handle);
    handle = null;
  }
  @override
  String regularFunction() {
    final _regularFunctionFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('library_smoke_InterfaceWithStatic_regularFunction'));
    final _handle = this.handle;
    final __resultHandle = _regularFunctionFfi(_handle, __lib.LibraryContext.isolateId);
    try {
      return String_fromFfi(__resultHandle);
    } finally {
      String_releaseFfiHandle(__resultHandle);
    }
  }
  @override
  static String staticFunction() {
    final _staticFunctionFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Int32), Pointer<Void> Function(int)>('library_smoke_InterfaceWithStatic_staticFunction'));
    final __resultHandle = _staticFunctionFfi(__lib.LibraryContext.isolateId);
    try {
      return String_fromFfi(__resultHandle);
    } finally {
      String_releaseFfiHandle(__resultHandle);
    }
  }
  String get regularProperty {
    final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>, Int32), Pointer<Void> Function(Pointer<Void>, int)>('library_smoke_InterfaceWithStatic_regularProperty_get'));
    final _handle = this.handle;
    final __resultHandle = _getFfi(_handle, __lib.LibraryContext.isolateId);
    try {
      return String_fromFfi(__resultHandle);
    } finally {
      String_releaseFfiHandle(__resultHandle);
    }
  }
  set regularProperty(String value) {
    final _setFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Void Function(Pointer<Void>, Int32, Pointer<Void>), void Function(Pointer<Void>, int, Pointer<Void>)>('library_smoke_InterfaceWithStatic_regularProperty_set__String'));
    final _valueHandle = String_toFfi(value);
    final _handle = this.handle;
    final __resultHandle = _setFfi(_handle, __lib.LibraryContext.isolateId, _valueHandle);
    String_releaseFfiHandle(_valueHandle);
    try {
      return (__resultHandle);
    } finally {
      (__resultHandle);
    }
  }
  static String get staticProperty {
    final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Int32), Pointer<Void> Function(int)>('library_smoke_InterfaceWithStatic_staticProperty_get'));
    final __resultHandle = _getFfi(__lib.LibraryContext.isolateId);
    try {
      return String_fromFfi(__resultHandle);
    } finally {
      String_releaseFfiHandle(__resultHandle);
    }
  }
  static set staticProperty(String value) {
    final _setFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Void Function(Int32, Pointer<Void>), void Function(int, Pointer<Void>)>('library_smoke_InterfaceWithStatic_staticProperty_set__String'));
    final _valueHandle = String_toFfi(value);
    final __resultHandle = _setFfi(__lib.LibraryContext.isolateId, _valueHandle);
    String_releaseFfiHandle(_valueHandle);
    try {
      return (__resultHandle);
    } finally {
      (__resultHandle);
    }
  }
}
int _InterfaceWithStatic_regularFunction_static(int _token, Pointer<Pointer<Void>> _result) {
  String _resultObject = null;
  try {
    _resultObject = (__lib.instanceCache[_token] as InterfaceWithStatic).regularFunction();
    _result.value = String_toFfi(_resultObject);
  } finally {
  }
  return 0;
}
int _InterfaceWithStatic_regularProperty_get_static(int _token, Pointer<Pointer<Void>> _result) {
  _result.value = String_toFfi((__lib.instanceCache[_token] as InterfaceWithStatic).regularProperty);
  return 0;
}
int _InterfaceWithStatic_regularProperty_set_static(int _token, Pointer<Void> _value) {
  try {
    (__lib.instanceCache[_token] as InterfaceWithStatic).regularProperty =
      String_fromFfi(_value);
  } finally {
    String_releaseFfiHandle(_value);
  }
  return 0;
}
Pointer<Void> smoke_InterfaceWithStatic_toFfi(InterfaceWithStatic value) {
  if (value is __lib.NativeBase) return _smokeInterfacewithstaticCopyHandle((value as __lib.NativeBase).handle);
  final result = _smokeInterfacewithstaticCreateProxy(
    __lib.cacheObject(value),
    __lib.LibraryContext.isolateId,
    __lib.uncacheObjectFfi,
    Pointer.fromFunction<Uint8 Function(Uint64, Pointer<Pointer<Void>>)>(_InterfaceWithStatic_regularFunction_static, __lib.unknownError),
    Pointer.fromFunction<Uint8 Function(Uint64, Pointer<Pointer<Void>>)>(_InterfaceWithStatic_regularProperty_get_static, __lib.unknownError),
    Pointer.fromFunction<Uint8 Function(Uint64, Pointer<Void>)>(_InterfaceWithStatic_regularProperty_set_static, __lib.unknownError)
  );
  return result;
}
InterfaceWithStatic smoke_InterfaceWithStatic_fromFfi(Pointer<Void> handle) {
  final isolateId = __lib.LibraryContext.isolateId;
  final token = __lib.ffiGetCachedToken(handle, isolateId);
  final instance = __lib.instanceCache[token] as InterfaceWithStatic;
  if (instance != null) return instance;
  final _typeIdHandle = _smokeInterfacewithstaticGetTypeId(handle);
  final factoryConstructor = __lib.typeRepository[String_fromFfi(_typeIdHandle)];
  String_releaseFfiHandle(_typeIdHandle);
  final _copiedHandle = _smokeInterfacewithstaticCopyHandle(handle);
  final result = factoryConstructor != null
    ? factoryConstructor(_copiedHandle)
    : InterfaceWithStatic$Impl(_copiedHandle);
  __lib.ffiCacheToken(_copiedHandle, isolateId, __lib.cacheObject(result));
  return result;
}
void smoke_InterfaceWithStatic_releaseFfiHandle(Pointer<Void> handle) =>
  _smokeInterfacewithstaticReleaseHandle(handle);
Pointer<Void> smoke_InterfaceWithStatic_toFfi_nullable(InterfaceWithStatic value) =>
  value != null ? smoke_InterfaceWithStatic_toFfi(value) : Pointer<Void>.fromAddress(0);
InterfaceWithStatic smoke_InterfaceWithStatic_fromFfi_nullable(Pointer<Void> handle) =>
  handle.address != 0 ? smoke_InterfaceWithStatic_fromFfi(handle) : null;
void smoke_InterfaceWithStatic_releaseFfiHandle_nullable(Pointer<Void> handle) =>
  _smokeInterfacewithstaticReleaseHandle(handle);
// End of InterfaceWithStatic "private" section.
