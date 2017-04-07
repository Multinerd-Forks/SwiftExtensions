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

extension String {
    /// MD5
    var MD5: String{
        let str = self.cString(using: String.Encoding.utf8)
        let strLength = CC_LONG(self.lengthOfBytes(using: String.Encoding.utf8))
        let digestLength = Int(CC_MD5_DIGEST_LENGTH)
        let result = UnsafeMutablePointer<CUnsignedChar>.allocate(capacity: digestLength)
        
        CC_MD5(str!, strLength, result)
        
        let md5 = NSMutableString()
        for i in 0 ..< digestLength {
            md5.appendFormat("%02x", result[i])
        }
        result.deinitialize()
        
        return String(format: md5 as String)
    }
}
