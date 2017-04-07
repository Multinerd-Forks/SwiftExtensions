//
//  String.swift
//  SwiftExtensions
//
//  Created by lw0717 on 17/3/31.
//  Copyright © 2017年 lw0717. All rights reserved.
//

import Foundation

extension String {
    /// String length
    var length: Int {
        return self.characters.count
    }
}

extension String {
    /// URL encoding
    var urlEncode: String? {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
    }
    /// URL decoding
    var urlDecode: String? {
        return self.removingPercentEncoding
    }
}
