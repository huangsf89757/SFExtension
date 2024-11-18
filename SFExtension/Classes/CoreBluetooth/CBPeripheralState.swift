//
//  CBPeripheralState.swift
//  SFExtension
//
//  Created by hsf on 2023/11/18.
//

import Foundation
import CoreBluetooth

// MARK: - CBPeripheralState
public extension SFWrapper where Base == CBPeripheralState {
    /// description
    var description: String {
        switch base {
        case .disconnected:
            return "disconnected"
        case .connecting:
            return "connecting"
        case .connected:
            return "connected"
        case .disconnecting:
            return "disconnecting"
        }
    }
}
