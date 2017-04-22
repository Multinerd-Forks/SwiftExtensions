//
//  Float.swift
//  SwiftExtensions
//
//  Created by lw0717 on 17/4/18.
//  Copyright © 2017年 lw0717. All rights reserved.
//

import Foundation

extension Float {
    /// Absolute value
    var abs: Float {
        return fabsf(self)
    }
    /// Squared root
    var sqrt: Float {
        return sqrtf(self)
    }
    /// Rounds self to the largest integer <= self
    var floor: Float {
        return floorf(self)
    }
    /// Rounds self to the smallest integer >= self
    var ceil: Float {
        return ceilf(self)
    }
    /// Rounds self to the nearest integer
    var round: Float {
        return roundf(self)
    }
}
