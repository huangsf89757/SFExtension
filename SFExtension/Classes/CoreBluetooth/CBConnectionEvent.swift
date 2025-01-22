//
//  CBConnectionEvent.swift
//  SFExtension
//
//  Created by hsf on 2024/9/19.
//

import Foundation
import CoreBluetooth

// MARK: - CustomStringConvertible
extension CBConnectionEvent: CustomStringConvertible {
    public var description: String {
        switch self {
        case .peerDisconnected:
            return "peerDisconnected"
        case .peerConnected:
            return "peerConnected"
        }
    }
}
