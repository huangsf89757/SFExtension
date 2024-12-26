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
    
    /// 获取 UIColor 的十六进制整数表示
    /// - Parameter includeAlpha: 是否包含透明度
    /// - Returns: 表示颜色的十六进制整数（如 0xRRGGBB 或 0xRRGGBBAA）
    func toHexInt(includeAlpha: Bool = false) -> Int? {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        
        // 获取颜色的 RGBA 值
        guard base.getRed(&r, green: &g, blue: &b, alpha: &a) else { return nil }
        
        // 四舍五入避免浮点精度问题
        let intR = Int(round(r * 255))
        let intG = Int(round(g * 255))
        let intB = Int(round(b * 255))
        let intA = Int(round(a * 255))
        
        if includeAlpha {
            // 如果完全透明，直接返回 0
            if intA == 0 {
                return 0x00000000
            }
            return (intA << 24) | (intR << 16) | (intG << 8) | intB
        } else {
            return (intR << 16) | (intG << 8) | intB
        }
    }

    
    /// 获取 UIColor 的十六进制字符串表示
    /// - Parameter includeAlpha: 是否包含透明度
    /// - Returns: 颜色的十六进制字符串（如 #RRGGBB 或 #RRGGBBAA）
    func toHexString(includeAlpha: Bool = true) -> String? {
        guard let hexInt = toHexInt(includeAlpha: includeAlpha) else {
            return nil
        }
        
        if includeAlpha {
            return String(format: "#%08X", hexInt) // 包含透明度
        } else {
            return String(format: "#%06X", hexInt & 0xFFFFFF) // 不包含透明度
        }
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
