//
//  UINavigationController.swift
//  SFExtension
//
//  Created by hsf on 2024/8/14.
//

import Foundation
import UIKit

// MARK: - UIView
public extension SFWrapper where Base: UINavigationController {
    public func updateBar(barTintColor: UIColor?, tintColor: UIColor?, titleColor: UIColor?, titleFont: UIFont?) {
        let attr = [
            NSAttributedString.Key.foregroundColor: titleColor,
            NSAttributedString.Key.font: titleFont
        ]
        base.navigationBar.titleTextAttributes = attr
        base.navigationBar.barTintColor = barTintColor
        base.navigationBar.tintColor = tintColor
        base.navigationBar.setBackgroundImage(UIImage(), for: .default)
        base.navigationBar.shadowImage = UIImage()
        base.navigationBar.isTranslucent = false
        
        if #available(iOS 13.0, *) {
            let barAppearance = UIBarAppearance()
            barAppearance.backgroundEffect = nil
            barAppearance.backgroundColor = barTintColor
            barAppearance.shadowColor = .clear
            
            let navBarAppearance = UINavigationBarAppearance(barAppearance: barAppearance)
            navBarAppearance.titleTextAttributes = attr
            base.navigationBar.standardAppearance = navBarAppearance
            base.navigationBar.compactAppearance = navBarAppearance
            base.navigationBar.scrollEdgeAppearance = navBarAppearance
        }
    }
}

