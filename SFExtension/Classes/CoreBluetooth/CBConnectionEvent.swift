//
//  CBConnectionEvent.swift
//  SFExtension
//
//  Created by hsf on 2024/9/19.
//

import Foundation
import CoreBluetooth

// MARK: - CBConnectionEvent
public extension SFWrapper where Base == CBConnectionEvent {
    /// description
    var description: String {
        switch base {
        case .peerDisconnected:
            return "peerDisconnected"
        case .peerConnected:
            return "peerConnected"
        }
    }
}

