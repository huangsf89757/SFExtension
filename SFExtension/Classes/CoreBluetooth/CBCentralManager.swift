//
//  CBCentralManager.swift
//  SFExtension
//
//  Created by hsf on 2023/11/18.
//

import Foundation
import CoreBluetooth

// MARK: - CustomStringConvertible
extension CBCentralManager: CustomStringConvertible {
    open override var description: String {
        let ptr = Unmanaged.passUnretained(self).toOpaque()
        let state = self.state.description
        var authorization = "<unknown>"
        if #available(iOS 13.0, *) {
            if #available(iOS 13.1, *) {
                authorization = CBManager.authorization.description
            } else {
                authorization = self.authorization.description
            }
        }
        return "[CBCentralManager]{ptr:\(ptr) state:\(state) authorization:\(authorization) isScanning:\(self.isScanning)}"
    }
}
