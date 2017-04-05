//
//  Array.swift
//  SwiftExtensions
//
//  Created by lw0717 on 17/3/31.
//  Copyright © 2017年 lw0717. All rights reserved.
//

import Foundation

extension Array where Element: Equatable {
    /// Removes and returns the deleted state
    ///
    /// - Parameter obj: The element to be deleted
    /// - Returns: Deleted state
    public mutating func remove(_ obj: Element) -> Bool {
        if let index = index(of: obj) {
            _ = self.remove(at: index)
            return true
        }
        return false
    }
}
