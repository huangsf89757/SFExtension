//
//  UIColor.swift
//  SFExtension
//
//  Created by hsf on 2023/11/12.
//

import Foundation
import UIKit

// MARK: - init
public extension SFWrapper where Base: UIColor {
    /// 创建
    /// - Parameters:
    ///   - name: 名称
    ///   - cls: 所在类名，nil则为默认的main bundle
    ///   - resource: 所在库的资源文件，nil则为默认的库名
    /// - Returns: image
    static func color(name: String?, cls: AnyClass?, resource: String? = nil) -> UIColor? {
        guard let name = name else { return nil }
        if let cls = cls {
            return color(name: name, bundle: Bundle.sf.bundle(cls: cls, resource: resource))
        }
        return color(name: name, bundle: Bundle.main)
    }
    
    /// 创建
    /// - Parameters:
    ///   - name: 名称
    ///   - bundle: 所在bundle
    /// - Returns: image
    static func color(name: String?, bundle: Bundle? = Bundle.main) -> UIColor? {
        guard let name = name else { return nil }
        return UIColor(named: name, in: bundle, compatibleWith: nil)
    }
}


// MARK: - hex
public extension SFWrapper where Base: UIColor {
    /// hex 颜色
    static func colorFromHex(_ hex: String, a alpha: CGFloat = 1.0) -> UIColor? {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        var rgb: UInt64 = 0
        guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else {
            return nil
        }
        let red = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgb & 0x0000FF) / 255.0
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
}


// MARK: - dynamic
public extension SFWrapper where Base: UIColor {
    /// 动态颜色
    @available(iOS 13.0, *)
    static func dynamicColor(light: UIColor, dark: UIColor) -> UIColor {
        return UIColor { trait in
            if trait.userInterfaceStyle == .dark {
                return dark
            } else {
                return light
            }
        }
    }
    
    /// 动态颜色
    @available(iOS 13.0, *)
    static func dynamicColorFromHex(light: String, dark: String) -> UIColor {
        return UIColor { trait in
            var hex = ""
            if trait.userInterfaceStyle == .dark {
                hex = dark
            } else {
                hex = light
            }
            return UIColor.sf.colorFromHex(hex) ?? .clear
        }
    }
}


// MARK: - other
public extension SFWrapper where Base: UIColor {
    /// 反转颜色
    func invertedColor() -> UIColor {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        
        // 获取当前颜色的 RGBA 值
        base.getRed(&r, green: &g, blue: &b, alpha: &a)
        
        // 计算反转颜色
        let invertedR = 1.0 - r
        let invertedG = 1.0 - g
        let invertedB = 1.0 - b
        
        return UIColor(red: invertedR, green: invertedG, blue: invertedB, alpha: a)
    }
}
