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
    public var length: Int {
        return self.characters.count
    }
    /// Cips the string based on the start position and length
    ///
    /// - Parameters:
    ///   - start: start position
    ///   - length: the length of subString
    /// - Returns: subString
    public func subString(start: Int, length: Int = -1) -> String {
        var len = length
        if len == -1 {
            len = characters.count - start
        }
        let startPosition = characters.index(startIndex, offsetBy: start)
        let endPosition = characters.index(startPosition, offsetBy: len)
        let range = startPosition ..< endPosition
        return substring(with: range)
    }
    /// return the subString's startIndex
    public func indexOf(subString: String) -> Int? {
        if let range = range(of: subString) {
            return distance(from: startIndex, to: range.lowerBound)
        }
        return nil
    }
}

extension String {
    /// URL encoding
    public var urlEncode: String? {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
    }
    /// URL decoding
    public var urlDecode: String? {
        return self.removingPercentEncoding
    }
}

extension String {
    /// Determines whether the string contains Chinese
    func isContainChinese() -> Bool {
        for char in self.characters {
            if ("\u{4E00}" <= char  && char <= "\u{9FA5}") {
                return true
            }
        }
        return false
    }
    /// Get the Chinese Phonetic Alphabet of Chinese characters
    func chinesePhoneticAlphabet() -> String {
        var pinyin = ""
        if self == "" {
            return pinyin
        }
        let str = CFStringCreateMutableCopy(nil, 0, self as CFString)
        CFStringTransform(str, nil, kCFStringTransformToLatin, Bool(0))
        CFStringTransform(str, nil, kCFStringTransformStripCombiningMarks, Bool(0))
        
        if let str = str {
            pinyin = str as String
        }
        return pinyin
    }
}

extension String {
    /// MD5 , need #import <CommonCrypto/CommonDigest.h>
    public var MD5: String {
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
