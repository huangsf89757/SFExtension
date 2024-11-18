//
//  CBCharacteristicWriteType.swift
//  SFExtension
//
//  Created by hsf on 2024/1/13.
//

import Foundation
import CoreBluetooth

// MARK: - CBCharacteristicWriteType
public extension SFWrapper where Base == CBCharacteristicWriteType {
    /// name
    var description: String {
        switch base {
        case .withResponse:
            return "withResponse"
        case .withoutResponse:
            return "withoutResponse"
        }
    }
}
