//
//  CBDescriptor.swift
//  SFExtension
//
//  Created by hsf on 2023/12/4.
//

import Foundation
import CoreBluetooth

// MARK: - CBDescriptor
public extension SFWrapper where Base == CBDescriptor {
    /// description
    var description: String {
        let address = Unmanaged.passUnretained(base).toOpaque()
        let uuid = base.uuid
        let value = base.value
        return "{obj:\(address) uuid:\(uuid) value:\(String(describing: value))}"
    }
}

