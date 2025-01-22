//
//  CBService.swift
//  SFExtension
//
//  Created by hsf on 2023/11/18.
//

import Foundation
import CoreBluetooth

// MARK: - CustomStringConvertible
extension CBService: CustomStringConvertible {
    open override var description: String {
        let uuid = self.uuid
        let isPrimary = self.isPrimary
        return "[CBService]{uuid:\(uuid) isPrimary:\(isPrimary)}"
    }
}
