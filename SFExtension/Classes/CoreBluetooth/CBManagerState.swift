//
//  CBManagerState.swift
//  SFExtension
//
//  Created by hsf on 2023/11/18.
//

import Foundation
import CoreBluetooth

// MARK: - CBManagerState
public extension SFWrapper where Base == CBManagerState {
    /// description
    var description: String {
        switch base {
        case .unknown:
            return "unknown"
        case .resetting:
            return "resetting"
        case .unsupported:
            return "unsupported"
        case .unauthorized:
            return "unauthorized"
        case .poweredOff:
            return "poweredOff"
        case .poweredOn:
            return "poweredOn"
        }
    }
}
