//
//  CBDescriptor.swift
//  SFExtension
//
//  Created by hsf on 2023/12/4.
//

import Foundation
import CoreBluetooth

// MARK: - CustomStringConvertible
extension CBDescriptor: CustomStringConvertible {
    open override var description: String {
        let address = Unmanaged.passUnretained(self).toOpaque()
        let uuid = self.uuid
        let value = self.value
        return "[CBDescriptor]{obj:\(address) uuid:\(uuid) value:\(String(describing: value))}"
    }
}
