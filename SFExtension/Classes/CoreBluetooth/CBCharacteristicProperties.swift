//
//  CBCharacteristicProperties.swift
//  SFExtension
//
//  Created by hsf on 2023/11/18.
//

import Foundation
import CoreBluetooth

// MARK: - CustomStringConvertible
extension CBCharacteristicProperties: CustomStringConvertible {
    public var description: String {
        var titles: [String] = []
        if self.contains(.broadcast) {
            titles.append("Broadcast")
        }
        if self.contains(.read) {
            titles.append("Read")
        }
        if self.contains(.writeWithoutResponse) {
            titles.append("Write Without Response")
        }
        if self.contains(.write) {
            titles.append("Write")
        }
        if self.contains(.notify) {
            titles.append("Notify")
        }
        if self.contains(.indicate) {
            titles.append("Indicate")
        }
        if self.contains(.authenticatedSignedWrites) {
            titles.append("Authenticated Signed Writes")
        }
        if self.contains(.extendedProperties) {
            titles.append("Extended Properties")
        }
        return "[\(titles.joined(separator: ", "))]"
    }
}
