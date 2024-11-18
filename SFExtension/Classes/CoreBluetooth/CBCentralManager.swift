//
//  CBCentralManager.swift
//  SFExtension
//
//  Created by hsf on 2023/11/18.
//

import Foundation
import CoreBluetooth

// MARK: - CBCentralManager
public extension SFWrapper where Base == CBCentralManager {
    /// description
    var description: String {
        let address = Unmanaged.passUnretained(base).toOpaque()
        let state = base.state.sf.description
        var authorization = "<unknown>"
        if #available(iOS 13.0, *) {
            if #available(iOS 13.1, *) {
                authorization = CBManager.authorization.sf.description
            } else {
                authorization = base.authorization.sf.description
            }
        }
        return "{obj:\(address) state:\(state) authorization:\(authorization) isScanning:\(base.isScanning)}"
    }
}

