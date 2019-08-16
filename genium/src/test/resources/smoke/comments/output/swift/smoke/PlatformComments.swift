//
//
// Automatically generated. Do not modify. Your changes will be lost.
import Foundation
@_cdecl("_CBridgeInitsmoke_PlatformComments")
internal func _CBridgeInitsmoke_PlatformComments(handle: _baseRef) -> UnsafeMutableRawPointer {
    let reference = PlatformComments(cPlatformComments: handle)
    return Unmanaged<AnyObject>.passRetained(reference).toOpaque()
}
internal func getRef(_ ref: PlatformComments?, owning: Bool = true) -> RefHolder {
    guard let c_handle = ref?.c_instance else {
        return RefHolder(0)
    }
    let handle_copy = smoke_PlatformComments_copy_handle(c_handle)
    return owning
        ? RefHolder(ref: handle_copy, release: smoke_PlatformComments_release_handle)
        : RefHolder(handle_copy)
}
public class PlatformComments {
    public typealias Boom = PlatformComments.SomeEnum
    let c_instance : _baseRef
    init(cPlatformComments: _baseRef) {
        guard cPlatformComments != 0 else {
            fatalError("Nullptr value is not supported for initializers")
        }
        c_instance = cPlatformComments
    }
    deinit {
        smoke_PlatformComments_release_handle(c_instance)
    }
    public enum SomeEnum : UInt32, CaseIterable {
        case useless
        case useful
    }
    /// This is some very useless method that is very swift.
    public func doNothing() -> Void {
        return moveFromCType(smoke_PlatformComments_doNothing(self.c_instance))
    }
    /// Eats a hip bruschetta.
    public func doMagic() -> Void {
        return moveFromCType(smoke_PlatformComments_doMagic(self.c_instance))
    }
    /// This is some very useful method that measures the usefulness of its input.
    /// - Parameter input: Very useful parameter
    /// - Returns: Usefulness of the input
    /// - Throws: `PlatformComments.SomeEnum` Sometimes it happens but not on iOS `PlatformComments.SomeEnum`.
    public func someMethodWithAllComments(input: String) throws -> Bool {
        let c_input = moveToCType(input)
        let RESULT = smoke_PlatformComments_someMethodWithAllComments(self.c_instance, c_input.ref)
        if (RESULT.has_value) {
            return moveFromCType(RESULT.returned_value)
        } else {
            throw PlatformComments.SomeEnum(rawValue: RESULT.error_code)!
        }
    }
}
extension PlatformComments: NativeBase {
    var c_handle: _baseRef { return c_instance }
}
internal func PlatformCommentscopyFromCType(_ handle: _baseRef) -> PlatformComments {
    if let swift_pointer = smoke_PlatformComments_get_typed(smoke_PlatformComments_copy_handle(handle)),
        let typed = Unmanaged<AnyObject>.fromOpaque(swift_pointer).takeRetainedValue() as? PlatformComments {
        return typed
    }
    fatalError("Failed to initialize Swift object")
}
internal func PlatformCommentsmoveFromCType(_ handle: _baseRef) -> PlatformComments {
    if let swift_pointer = smoke_PlatformComments_get_typed(handle),
        let typed = Unmanaged<AnyObject>.fromOpaque(swift_pointer).takeRetainedValue() as? PlatformComments {
        return typed
    }
    fatalError("Failed to initialize Swift object")
}
internal func PlatformCommentscopyFromCType(_ handle: _baseRef) -> PlatformComments? {
    guard handle != 0 else {
        return nil
    }
    return PlatformCommentsmoveFromCType(handle) as PlatformComments
}
internal func PlatformCommentsmoveFromCType(_ handle: _baseRef) -> PlatformComments? {
    guard handle != 0 else {
        return nil
    }
    return PlatformCommentsmoveFromCType(handle) as PlatformComments
}
internal func copyToCType(_ swiftClass: PlatformComments) -> RefHolder {
    return getRef(swiftClass, owning: false)
}
internal func moveToCType(_ swiftClass: PlatformComments) -> RefHolder {
    return getRef(swiftClass, owning: true)
}
internal func copyToCType(_ swiftClass: PlatformComments?) -> RefHolder {
    return getRef(swiftClass, owning: false)
}
internal func moveToCType(_ swiftClass: PlatformComments?) -> RefHolder {
    return getRef(swiftClass, owning: true)
}
internal func copyToCType(_ swiftEnum: PlatformComments.SomeEnum) -> PrimitiveHolder<UInt32> {
    return PrimitiveHolder(swiftEnum.rawValue)
}
internal func moveToCType(_ swiftEnum: PlatformComments.SomeEnum) -> PrimitiveHolder<UInt32> {
    return copyToCType(swiftEnum)
}
internal func copyToCType(_ swiftEnum: PlatformComments.SomeEnum?) -> RefHolder {
    return copyToCType(swiftEnum?.rawValue)
}
internal func moveToCType(_ swiftEnum: PlatformComments.SomeEnum?) -> RefHolder {
    return moveToCType(swiftEnum?.rawValue)
}
internal func copyFromCType(_ cValue: UInt32) -> PlatformComments.SomeEnum {
    return PlatformComments.SomeEnum(rawValue: cValue)!
}
internal func moveFromCType(_ cValue: UInt32) -> PlatformComments.SomeEnum {
    return copyFromCType(cValue)
}
internal func copyFromCType(_ handle: _baseRef) -> PlatformComments.SomeEnum? {
    guard handle != 0 else {
        return nil
    }
    return PlatformComments.SomeEnum(rawValue: uint32_t_value_get(handle))!
}
internal func moveFromCType(_ handle: _baseRef) -> PlatformComments.SomeEnum? {
    defer {
        uint32_t_release_handle(handle)
    }
    return copyFromCType(handle)
}
/// An error when something goes wrong.
extension PlatformComments.SomeEnum : Error {
}