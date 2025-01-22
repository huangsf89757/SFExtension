//
//  CBCharacteristic.swift
//  SFExtension
//
//  Created by hsf on 2023/11/18.
//

import Foundation
import CoreBluetooth

// MARK: - CustomStringConvertible
extension CBCharacteristic: CustomStringConvertible {
    open override var description: String {
        let ptr = Unmanaged.passUnretained(self).toOpaque()
        let uuid = self.uuid
        let properties = self.properties.description
        let isBroadcasted = self.isBroadcasted
        let isNotifying = self.isNotifying
        let value = self.value?.sf.toHex() ?? "nil"
        return "[CBCharacteristic]{ptr:\(ptr) uuid:\(uuid) properties:\(properties) isBroadcasted:\(isBroadcasted) isNotifying:\(isNotifying) value:\(value)}"
    }
}
