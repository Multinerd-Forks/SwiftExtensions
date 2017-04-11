//
//  Array.swift
//  SwiftExtensions
//
//  Created by lw0717 on 17/3/31.
//  Copyright © 2017年 lw0717. All rights reserved.
//

import Foundation

extension Array {
    /// Combination with the count of Element
    ///
    /// - Parameter count: the count of Element
    /// - Returns: the new array
    public func combination(with count: Int) -> [[Element]] {
        if self.count == count {
            return [self]
        }
        var result: [[Element]] = []
        if count > 0 {
            if count == 1 {
                result = self.map { [$0] }
            }else {
                let rest = Array(self.suffix(from: 1))
                let sub_combos = rest.combination(with: count - 1)
                
                let mappedCombos = sub_combos.map { [self[0]] + $0 }
                for arr in mappedCombos {
                    result.append(arr)
                }
                
                for combo in rest.combination(with: count) {
                    result.append(combo)
                }
            }
        }
        return result
    }
}

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
