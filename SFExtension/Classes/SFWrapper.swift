//
//  SFWrapper.swift
//  SFExtension
//
//  Created by hsf on 2023/11/18.
//

import Foundation
import UIKit
import CoreBluetooth

// MARK: - SFWrapper
@frozen
public struct SFWrapper<Base> {
    public var base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

// MARK: - SFWrapperCompatible
public protocol SFWrapperCompatible {
    associatedtype CompatibleType
    var sf: CompatibleType { get }
    static var sf: CompatibleType.Type { get }
}
public extension SFWrapperCompatible {
    var sf: SFWrapper<Self> {
        set { }
        get {
            SFWrapper(self)
        }
    }
    static var sf: SFWrapper<Self>.Type {
        set { }
        get {
            SFWrapper<Self>.self
        }
    }
}

// MARK: - identifier
private var SF_KEY_identifier: Void?
public extension SFWrapper {
    var identifier: String? {
        get {
            objc_getAssociatedObject(base, &SF_KEY_identifier) as? String
        }
        set {
            objc_setAssociatedObject(base, &SF_KEY_identifier, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
}


// MARK: - Foundation
extension NSObject: SFWrapperCompatible {}

extension String: SFWrapperCompatible {}
extension Array: SFWrapperCompatible {}
extension Dictionary: SFWrapperCompatible {}
extension Set: SFWrapperCompatible {}

extension Int: SFWrapperCompatible {}
extension Double: SFWrapperCompatible {}
extension Float: SFWrapperCompatible {}
extension Bool: SFWrapperCompatible {}

extension Date: SFWrapperCompatible {}
extension Data: SFWrapperCompatible {}

extension URL: SFWrapperCompatible {}
extension URLRequest: SFWrapperCompatible {}

extension NSLayoutConstraint: SFWrapperCompatible {}
extension NSAttributedString: SFWrapperCompatible {}
extension NSMutableAttributedString: SFWrapperCompatible {}
extension NSAttributedString.Key: SFWrapperCompatible {}
extension NSNotification.Name: SFWrapperCompatible {}
extension NSCoder: SFWrapperCompatible {}

extension NSRange: SFWrapperCompatible {}

// MARK: - CoreGraphics
extension CGRect: SFWrapperCompatible {}
extension CGSize: SFWrapperCompatible {}
extension CGPoint: SFWrapperCompatible {}
extension CGFloat: SFWrapperCompatible {}
extension CGVector: SFWrapperCompatible {}
extension UIOffset: SFWrapperCompatible {}
extension UIEdgeInsets: SFWrapperCompatible {}

// MARK: - UIKit
extension UIColor: SFWrapperCompatible {}
extension UIImage: SFWrapperCompatible {}
extension UIFont: SFWrapperCompatible {}

extension CALayer: SFWrapperCompatible {}
extension UIView: SFWrapperCompatible {}
extension UIViewController: SFWrapperCompatible {}
extension UIWindow: SFWrapperCompatible {}
extension UIImageView: SFWrapperCompatible {}
extension UILabel: SFWrapperCompatible {}
extension UITextField: SFWrapperCompatible {}
extension UITextView: SFWrapperCompatible {}
extension UIButton: SFWrapperCompatible {}
extension UICollectionView: SFWrapperCompatible {}
extension UITableView: SFWrapperCompatible {}


// MARK: - CoreBluetooth
extension CBCentralManager: SFWrapperCompatible {}
extension CBPeripheral: SFWrapperCompatible {}
extension CBService: SFWrapperCompatible {}
extension CBCharacteristic: SFWrapperCompatible {}
extension CBDescriptor: SFWrapperCompatible {}

extension CBUUID: SFWrapperCompatible {}
extension CBCharacteristicProperties: SFWrapperCompatible {}
extension CBCharacteristicWriteType: SFWrapperCompatible {}
extension CBError: SFWrapperCompatible {}
@available(iOS 13.0, *) extension CBManagerAuthorization: SFWrapperCompatible {}
extension CBManagerState: SFWrapperCompatible {}
extension CBPeripheralState: SFWrapperCompatible {}
extension CBConnectionEvent: SFWrapperCompatible {}
