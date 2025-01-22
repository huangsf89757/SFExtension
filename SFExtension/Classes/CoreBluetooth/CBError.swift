//
//  CBError.swift
//  SFExtension
//
//  Created by hsf on 2023/11/18.
//

import Foundation
import CoreBluetooth

// MARK: - CustomStringConvertible
extension CBError: CustomStringConvertible {
    public var description: String {
        switch self.code {
        case .unknown:
            return "unknown"
        case .invalidParameters:
            return "invalidParameters"
        case .invalidHandle:
            return "invalidHandle"
        case .notConnected:
            return "notConnected"
        case .outOfSpace:
            return "outOfSpace"
        case .operationCancelled:
            return "operationCancelled"
        case .connectionTimeout:
            return "connectionTimeout"
        case .peripheralDisconnected:
            return "peripheralDisconnected"
        case .uuidNotAllowed:
            return "uuidNotAllowed"
        case .alreadyAdvertising:
            return "alreadyAdvertising"
        case .connectionFailed:
            return "connectionFailed"
        case .connectionLimitReached:
            return "connectionLimitReached"
        case .unkownDevice:
            return "unkownDevice"
        case .operationNotSupported:
            return "operationNotSupported"
        case .peerRemovedPairingInformation:
            return "peerRemovedPairingInformation"
        case .encryptionTimedOut:
            return "encryptionTimedOut"
        case .tooManyLEPairedDevices:
            return "tooManyLEPairedDevices"
        }
    }
}
