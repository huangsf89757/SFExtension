//
//  CBService.swift
//  SFExtension
//
//  Created by hsf on 2023/11/18.
//

import Foundation
import CoreBluetooth

// MARK: - CBService
public extension SFWrapper where Base == CBService {
    /// description
    var description: String {
        let uuid = base.uuid
        let isPrimary = base.isPrimary
        return "{uuid:\(uuid) isPrimary:\(isPrimary)}"
    }
}
