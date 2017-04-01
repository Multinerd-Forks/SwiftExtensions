//
//  UIColor.swift
//  LWiOSDevelopmentTools
//
//  Created by lw0717 on 16/12/30.
//  Copyright © 2016年 lw0717. All rights reserved.
//

import UIKit

extension UIColor {
    
    /// An extension for UIColor to use a hexadecimal value to generate a color value
    ///
    /// - Parameter rgbColor: Hexadecimal color value. eg. let rgb: UInt32 = 0xCC6699
    /// - Returns: A new color
    /// eg. let color = UIColor.color(0xCC6699)
    public class func color(_ rgbColor: UInt32) -> UIColor {
        return color(rgbColor, alpha: 1.0)
    }
    
    ///
    /// An extension for UIColor to use a hexadecimal value to generate a color value
    ///
    /// - Parameters:
    ///   - rgbColor: Hexadecimal color value. eg. let rgb: UInt32 = 0xCC6699
    ///   - alpha: Color's alpha
    /// - Returns: A new color
    /// eg. let color = UIColor.color(0xCC6699)
    public class func color(_ rgbColor: UInt32, alpha: Float) -> UIColor {
        let redComponent: UInt32 = (rgbColor & 0xFF0000) >> 16
        let greenComponent: UInt32 = (rgbColor & 0x00FF00) >> 8
        let blueComponent: UInt32 = (rgbColor & 0x0000FF)
        return UIColor.init(colorLiteralRed: Float(redComponent) / 255.0, green: Float(greenComponent) / 255.0, blue: Float(blueComponent) / 255.0, alpha: alpha)
    }
}
