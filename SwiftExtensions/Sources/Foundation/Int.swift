//
//  Int.swift
//  SwiftExtensions
//
//  Created by lw0717 on 17/4/17.
//  Copyright © 2017年 lw0717. All rights reserved.
//

import Foundation

extension Int {
    /// Absolute value
    var abs: Int { return Swift.abs(self) }
}

extension Int {
    /// Checks if a number is even. Return true if self is even
    var isEven: Bool { return (self % 2) == 0 }
    /// Checks if a number is odd. Return true if self is odd
    var isOdd: Bool { return (self % 2) == 1 }
}

extension Int {
    public var toUInt8: UInt8 { return UInt8(truncatingBitPattern: self) }
    public var toInt8: Int8 { return Int8(truncatingBitPattern: self) }
    public var toUInt16: UInt16 { return UInt16(truncatingBitPattern: self) }
    public var toInt16: Int16 { return Int16(truncatingBitPattern: self) }
    public var toUInt32: UInt32 { return UInt32(truncatingBitPattern: self) }
    public var toInt32: Int32 { return Int32(truncatingBitPattern: self) }
    //No difference if the platform is 32 or 64
    public var toUInt64: UInt64 { return UInt64(self) }
    public var toInt64: Int64 { return Int64(self) }
}
