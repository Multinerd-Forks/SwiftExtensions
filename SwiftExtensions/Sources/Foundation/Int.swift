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
    var abs: Int {
        return Swift.abs(self)
    }
    /// Checks if a number is even. Return true if self is even
    var isEven: Bool {
        return (self % 2) == 0
    }
    /// Checks if a number is odd. Return true if self is odd
    var isOdd: Bool {
        return (self % 2) == 1
    }
}
