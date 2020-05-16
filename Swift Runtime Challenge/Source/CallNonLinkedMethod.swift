//
//  CallNonLinkedMethod.swift
//  Created on 5/16/20
//

import Foundation

class CallNonLinkedMethod {
    static func run() {
    }

    // Use objc_msgSend directly
    // Error: 'objc_msgSend' is unavailable: Variadic function is unavailable
//    static func muirey() {
//        let mockTarget = NSObject()
//        objc_msgSend(mockTarget, #selector(TargetClass.targetMethod))
//    }

    /// Invoke implementation
    static func nullpixel() {
//        let instance = TargetClass()
//        let implementation = class_getMethodImplementation(TargetClass.self, #selector(TargetClass.targetInstanceMethod))

        let mockInstance = NSObject()
        let mockImplementation = IMP(bitPattern: 0x1)
        let function = unsafeBitCast(mockImplementation, to: (@convention(c) (AnyObject, Selector) -> ()).self)
        function(mockInstance, #selector(TargetClass.targetInstanceMethod))
    }
}
