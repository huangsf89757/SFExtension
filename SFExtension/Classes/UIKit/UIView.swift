//
//  UIView.swift
//  SFExtension
//
//  Created by hsf on 2024/7/21.
//

import Foundation
import UIKit

// MARK: - UIView
public extension SFWrapper where Base: UIView {
    /// 移除所有的子视图
    func removeAllSubviews(except view: UIView? = nil) {
        for subview in base.subviews {
            if subview === view { continue }
            subview.removeFromSuperview()
        }
    }
    
}


// MARK: - shadow
public extension UIView {
    struct AssociatedKeys {
        static var shadowLayer = "shadowLayer"
        static var shouldUpdateShadowLayer = "shouldUpdateShadowLayer"
    }
    var shadowLayer: CAShapeLayer {
        get {
            if let layer = objc_getAssociatedObject(self, &AssociatedKeys.shadowLayer) as? CAShapeLayer {
                return layer
            } else {
                let layer = CAShapeLayer()
                objc_setAssociatedObject(self, &AssociatedKeys.shadowLayer, layer, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
                return layer
            }
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.shadowLayer, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    var shouldUpdateShadowLayer: Bool {
        get {
            objc_getAssociatedObject(self, &AssociatedKeys.shouldUpdateShadowLayer) as? Bool ?? false
        }
        set {
            objc_setAssociatedObject(self, &AssociatedKeys.shouldUpdateShadowLayer, newValue, .OBJC_ASSOCIATION_COPY_NONATOMIC)
        }
    }
}
public extension SFWrapper where Base: UIView {
    func setCornerAndShadow(radius: CGFloat, 
                            fillColor: UIColor? = .white,
                            shadowColor: UIColor? = .black,
                            shadowOpacity: Float = 0.3,
                            shadowOffset: CGSize = .zero,
                            shadowRadius: CGFloat = 5) {
        base.shouldUpdateShadowLayer = true
        base.backgroundColor = .clear
        base.layer.cornerRadius = radius
        base.layer.masksToBounds = false
        base.clipsToBounds = false
        
        let shadowLayer = base.shadowLayer
        shadowLayer.frame = base.bounds
        shadowLayer.fillColor = fillColor?.cgColor
        shadowLayer.shadowColor = shadowColor?.cgColor
        shadowLayer.shadowOpacity = shadowOpacity
        shadowLayer.shadowOffset = shadowOffset
        shadowLayer.shadowRadius = shadowRadius
        
    }
    
    func applyCornerAndShadow() {
        if base.shouldUpdateShadowLayer {
            let path = UIBezierPath(roundedRect: base.bounds, cornerRadius: base.layer.cornerRadius).cgPath
            base.shadowLayer.path = path
            base.shadowLayer.shadowPath = path
            base.layer.insertSublayer(base.shadowLayer, at: 0)
            base.shouldUpdateShadowLayer = false
        }
    }
}
