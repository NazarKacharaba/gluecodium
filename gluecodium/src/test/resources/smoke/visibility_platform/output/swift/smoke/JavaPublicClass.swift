//
//
import Foundation
internal class JavaPublicClass {
    let c_instance : _baseRef
    init(cJavaPublicClass: _baseRef) {
        guard cJavaPublicClass != 0 else {
            fatalError("Nullptr value is not supported for initializers")
        }
        c_instance = cJavaPublicClass
    }
    deinit {
        smoke_JavaPublicClass_remove_swift_object_from_wrapper_cache(c_instance)
        smoke_JavaPublicClass_release_handle(c_instance)
    }
}
internal func getRef(_ ref: JavaPublicClass?, owning: Bool = true) -> RefHolder {
    guard let c_handle = ref?.c_instance else {
        return RefHolder(0)
    }
    let handle_copy = smoke_JavaPublicClass_copy_handle(c_handle)
    return owning
        ? RefHolder(ref: handle_copy, release: smoke_JavaPublicClass_release_handle)
        : RefHolder(handle_copy)
}
extension JavaPublicClass: NativeBase {
    /// :nodoc:
    var c_handle: _baseRef { return c_instance }
}
extension JavaPublicClass: Hashable {
    /// :nodoc:
    public static func == (lhs: JavaPublicClass, rhs: JavaPublicClass) -> Bool {
        return lhs.c_handle == rhs.c_handle
    }
    /// :nodoc:
    public func hash(into hasher: inout Hasher) {
        hasher.combine(c_handle)
    }
}
internal func JavaPublicClass_copyFromCType(_ handle: _baseRef) -> JavaPublicClass {
    if let swift_pointer = smoke_JavaPublicClass_get_swift_object_from_wrapper_cache(handle),
        let re_constructed = Unmanaged<AnyObject>.fromOpaque(swift_pointer).takeUnretainedValue() as? JavaPublicClass {
        return re_constructed
    }
    let result = JavaPublicClass(cJavaPublicClass: smoke_JavaPublicClass_copy_handle(handle))
    smoke_JavaPublicClass_cache_swift_object_wrapper(handle, Unmanaged<AnyObject>.passUnretained(result).toOpaque())
    return result
}
internal func JavaPublicClass_moveFromCType(_ handle: _baseRef) -> JavaPublicClass {
    if let swift_pointer = smoke_JavaPublicClass_get_swift_object_from_wrapper_cache(handle),
        let re_constructed = Unmanaged<AnyObject>.fromOpaque(swift_pointer).takeUnretainedValue() as? JavaPublicClass {
        smoke_JavaPublicClass_release_handle(handle)
        return re_constructed
    }
    let result = JavaPublicClass(cJavaPublicClass: handle)
    smoke_JavaPublicClass_cache_swift_object_wrapper(handle, Unmanaged<AnyObject>.passUnretained(result).toOpaque())
    return result
}
internal func JavaPublicClass_copyFromCType(_ handle: _baseRef) -> JavaPublicClass? {
    guard handle != 0 else {
        return nil
    }
    return JavaPublicClass_moveFromCType(handle) as JavaPublicClass
}
internal func JavaPublicClass_moveFromCType(_ handle: _baseRef) -> JavaPublicClass? {
    guard handle != 0 else {
        return nil
    }
    return JavaPublicClass_moveFromCType(handle) as JavaPublicClass
}
internal func copyToCType(_ swiftClass: JavaPublicClass) -> RefHolder {
    return getRef(swiftClass, owning: false)
}
internal func moveToCType(_ swiftClass: JavaPublicClass) -> RefHolder {
    return getRef(swiftClass, owning: true)
}
internal func copyToCType(_ swiftClass: JavaPublicClass?) -> RefHolder {
    return getRef(swiftClass, owning: false)
}
internal func moveToCType(_ swiftClass: JavaPublicClass?) -> RefHolder {
    return getRef(swiftClass, owning: true)
}
