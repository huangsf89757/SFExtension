//
//  CBPeripheral.swift
//  SFExtension
//
//  Created by hsf on 2023/11/18.
//

import Foundation
import CoreBluetooth

// MARK: - CustomStringConvertible
extension CBPeripheral: CustomStringConvertible {
    open override var description: String {
        let ptr = Unmanaged.passUnretained(self).toOpaque()
        let identifier = self.identifier
        let name = self.name ?? "nil"
        let state = self.state.description
        let rssi = self.rssi
        return "[CBPeripheral]{ptr:\(ptr) identifier:\(identifier) name:\(name) state:\(state) rssi:\(rssi)}"
    }
}

