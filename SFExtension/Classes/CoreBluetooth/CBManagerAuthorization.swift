//
//  CBManagerAuthorization.swift
//  SFExtension
//
//  Created by hsf on 2023/11/18.
//

import Foundation
import CoreBluetooth

// MARK: - CBManagerAuthorization
@available(iOS 13.0, *)
public extension SFWrapper where Base == CBManagerAuthorization {
    /// description
    var description: String {
        switch base {
        case .notDetermined:
            return "notDetermined"
        case .restricted:
            return "restricted"
        case .denied:
            return "denied"
        case .allowedAlways:
            return "allowedAlways"
        }
    }
}
