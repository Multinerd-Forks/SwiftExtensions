//
//  Double.swift
//  SwiftExtensions
//
//  Created by lw0717 on 17/4/19.
//  Copyright © 2017年 lw0717. All rights reserved.
//

import Foundation

extension Double {
    /// Absolute value
    var abs: Double {
        return Foundation.fabs(self)
    }
    /// Squared root
    var sqrt: Double {
        return Foundation.sqrt(self)
    }
    /// Rounds self to the largest integer <= self
    var floor: Double {
        return Foundation.floor(self)
    }
    /// Rounds self to the smallest integer >= self
    var ceil: Double {
        return Foundation.ceil(self)
    }
    /// Rounds self to the nearest integer
    var round: Double {
        return Foundation.round(self)
    }
}
