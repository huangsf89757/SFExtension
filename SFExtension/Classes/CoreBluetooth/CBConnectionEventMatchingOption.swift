//
//  CBConnectionEventMatchingOption.swift
//  SFExtension
//
//  Created by hsf on 2024/9/19.
//

import Foundation
import CoreBluetooth

// MARK: - CBConnectionEventMatchingOption
public extension SFWrapper where Base == CBConnectionEventMatchingOption {
    /// description
    var description: String {
        return base.rawValue
    }
}
