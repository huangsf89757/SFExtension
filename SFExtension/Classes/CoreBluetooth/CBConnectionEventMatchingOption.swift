//
//  CBConnectionEventMatchingOption.swift
//  SFExtension
//
//  Created by hsf on 2024/9/19.
//

import Foundation
import CoreBluetooth

// MARK: - CustomStringConvertible
extension CBConnectionEventMatchingOption: CustomStringConvertible {
    public var description: String {
        return self.rawValue
    }
}
