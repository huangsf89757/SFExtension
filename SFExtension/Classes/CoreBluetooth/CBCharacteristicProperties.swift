//
//  CBCharacteristicProperties.swift
//  SFExtension
//
//  Created by hsf on 2023/11/18.
//

import Foundation
import CoreBluetooth

// MARK: - CBCharacteristicProperties
public extension SFWrapper where Base == CBCharacteristicProperties {
    /// description
    var description: String {
        var titles: [String] = []
        if base.contains(.broadcast) {
            titles.append("Broadcast")
        }
        if base.contains(.read) {
            titles.append("Read")
        }
        if base.contains(.writeWithoutResponse) {
            titles.append("Write Without Response")
        }
        if base.contains(.write) {
            titles.append("Write")
        }
        if base.contains(.notify) {
            titles.append("Notify")
        }
        if base.contains(.indicate) {
            titles.append("Indicate")
        }
        if base.contains(.authenticatedSignedWrites) {
            titles.append("Authenticated Signed Writes")
        }
        if base.contains(.extendedProperties) {
            titles.append("Extended Properties")
        }
        return "[\(titles.joined(separator: ", "))]"
    }
}
