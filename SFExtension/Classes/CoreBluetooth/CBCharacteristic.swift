//
//  CBCharacteristic.swift
//  SFExtension
//
//  Created by hsf on 2023/11/18.
//

import Foundation
import CoreBluetooth

// MARK: - CBCharacteristic
public extension SFWrapper where Base == CBCharacteristic {
    /// description
    var description: String {
        let address = Unmanaged.passUnretained(base).toOpaque()
        let uuid = base.uuid
        let properties = base.properties.sf.description
        let isBroadcasted = base.isBroadcasted
        let isNotifying = base.isNotifying
        let value = base.value?.sf.toHex() ?? "nil"
        return "{obj:\(address) uuid:\(uuid) properties:\(properties) isBroadcasted:\(isBroadcasted) isNotifying:\(isNotifying) value:\(value)}"
    }
}


