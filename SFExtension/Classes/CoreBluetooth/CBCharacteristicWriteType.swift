//
//  CBCharacteristicWriteType.swift
//  SFExtension
//
//  Created by hsf on 2024/1/13.
//

import Foundation
import CoreBluetooth

// MARK: - CustomStringConvertible
extension CBCharacteristicWriteType: CustomStringConvertible {
    public var description: String {
        switch self {
        case .withResponse:
            return "withResponse"
        case .withoutResponse:
            return "withoutResponse"
        }
    }
}
