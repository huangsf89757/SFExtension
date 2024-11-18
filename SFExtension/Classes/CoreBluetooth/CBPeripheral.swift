//
//  CBPeripheral.swift
//  SFExtension
//
//  Created by hsf on 2023/11/18.
//

import Foundation
import CoreBluetooth

// MARK: - CBPeripheral
public extension SFWrapper where Base == CBPeripheral {
    
    
    /// description
    var description: String {
        let address = Unmanaged.passUnretained(base).toOpaque()
        let identifier = base.identifier
        let name = base.name ?? "nil"
        let state = base.state.sf.description
        let rssi = base.rssi
        return "{obj:\(address) identifier:\(identifier) name:\(name) state:\(state) rssi:\(rssi)}"
    }
    
   
}
