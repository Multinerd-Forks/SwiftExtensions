//
//  Float.swift
//  SwiftExtensions
//
//  Created by lw0717 on 17/4/18.
//  Copyright © 2017年 lw0717. All rights reserved.
//

import Foundation

extension Float {
    /// returns abs(self)
    var abs: Float {
        return fabsf(self)
    }
    /// returns sqrt(self)
    var sqrt: Float {
        return sqrtf(self)
    }
}
