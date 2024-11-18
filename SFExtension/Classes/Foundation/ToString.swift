//
//  ToString.swift
//  SFExtension
//
//  Created by hsf on 2024/7/21.
//

import Foundation
import CoreGraphics

// MARK: - ToString
public extension SFWrapper where Base == String {
    /// 从String转换为CGRect
    var toCGRect: CGRect? {
        return NSCoder.cgRect(for: base)
    }
    
    /// 从String转换为CGSize
    var toCGSize: CGSize? {
        return NSCoder.cgSize(for: base)
    }
    
    /// 从String转换为CGPoint
    var toCGPoint: CGPoint? {
        return NSCoder.cgPoint(for: base)
    }
    
    /// 从String转换为CGFloat
    var toCGFloat: CGFloat? {
        if let doubleValue = Double(base) {
            return CGFloat(doubleValue)
        }
        return nil
    }
    
    /// 从String转换为CGVector
    var toCGVector: CGVector? {
        return NSCoder.cgVector(for: base)
    }
    
    /// 从String转换为UIOffset
    var toUIOffset: UIOffset? {
        return NSCoder.uiOffset(for: base)
    }
    
    /// 从String转换为UIEdgeInsets
    var toUIEdgeInsets: UIEdgeInsets? {
        return NSCoder.uiEdgeInsets(for: base)
    }
    
    /// 从String转换为Bool
    var toBool: Bool? {
        if base.uppercased() == "TRUE" {
            return true
        }
        if base.uppercased() == "FALSE" {
            return false
        }
        return nil
    }
    
    /// 从String转换为Float
    var toFloat: Float? {
        return Float(base)
    }
    
    /// 从String转换为Double
    var toDouble: Double? {
        return Double(base)
    }
}


// MARK: - CG => String
public extension SFWrapper where Base == CGRect {
    /// 从CGRect转换为String
    var toString: String {
        return NSCoder.string(for: base)
    }
}

public extension SFWrapper where Base == CGSize {
    /// 从CGSize转换为String
    var toString: String {
        return NSCoder.string(for: base)
    }
}

public extension SFWrapper where Base == CGPoint {
    /// 从CGPoint转换为String
    var toString: String {
        return NSCoder.string(for: base)
    }
}

public extension SFWrapper where Base == CGFloat {
    /// 从CGFloat转换为String
    var toString: String {
        return "\(base)"
    }
}

public extension SFWrapper where Base == CGVector {
    /// 从CGVector转换为String
    var toString: String {
        return NSCoder.string(for: base)
    }
}

public extension SFWrapper where Base == UIOffset {
    /// 从UIOffset转换为String
    var toString: String {
        return NSCoder.string(for: base)
    }
}

public extension SFWrapper where Base == UIEdgeInsets {
    /// 从UIEdgeInsets转换为String
    var toString: String {
        return NSCoder.string(for: base)
    }
}

public extension SFWrapper where Base == Bool {
    /// 从Bool转换为String
    var toString: String {
        return base ? "TRUE" : "FALSE"
    }
}

public extension SFWrapper where Base == Int {
    /// 从Int转换为String
    var toString: String {
        return "\(base)"
    }
}

public extension SFWrapper where Base == Float {
    /// 从Float转换为String
    var toString: String {
        return "\(base)"
    }
}

public extension SFWrapper where Base == Double {
    /// 从Double转换为String
    var toString: String {
        return "\(base)"
    }
}
