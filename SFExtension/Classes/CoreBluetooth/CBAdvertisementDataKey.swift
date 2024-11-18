//
//  CBAdvertisementDataKey.swift
//  SFExtension
//
//  Created by hsf on 2023/12/27.
//

import Foundation
import CoreBluetooth


// MARK: - CBAdvertisementDataKey
public enum CBAdvertisementDataKey {
    /// 键说明：设备的本地名称。
    /// 值类型：String
    /// 示例："MyBluetoothDevice"
    case localName
    
    /// 键说明：设备的传输功率（dBm）。
    /// 值类型：NSNumber
    /// 示例：-60
    case txPowerLevel
    
    /// 键说明：设备广播的服务 UUID 列表。
    /// 值类型：[CBUUID]
    /// 示例：[0000180A-0000-1000-8000-00805F9B34FB]
    case serviceUUIDs
    
    /// 键说明：服务数据，特定服务使用。
    /// 值类型：[CBUUID: Data]
    /// 示例：[0000180F-0000-1000-8000-00805F9B34FB: <00112233>]
    case serviceData
    
    /// 键说明：制造商自定义数据。
    /// 值类型：Data
    /// 示例：<4c000215 74278bdab64445208f0c720e af059935 d50d39c3>
    case manufacturerData
    
    /// 键说明：溢出的服务 UUID 列表。
    /// 值类型：[CBUUID]
    /// 示例：[0000180A-0000-1000-8000-00805F9B34FB]
    case overflowServiceUUIDs
    
    /// 键说明：设备是否可连接。
    /// 值类型：NSNumber (Bool)
    /// 示例：1
    case isConnectable
    
    /// 键说明：请求的服务 UUID 列表。
    /// 值类型：[CBUUID]
    /// 示例：[0000180D-0000-1000-8000-00805F9B34FB]
    case solicitedServiceUUIDs
    
    /// 键说明：设备外观类型。
    /// 值类型：NSNumber
    /// 示例：832
    case appearance
    
    /// 键说明：设备支持的 LE 特性（iOS 13+）。
    /// 值类型：NSNumber
    case leSupportedFeatures
    
    /// 键说明：设备广播的通道号。
    /// 值类型：NSNumber
    /// 示例：37
    case channel
    
    /// 键说明：设备次级 PHY，蓝牙 5.0 以上。
    /// 值类型：NSNumber
    /// 示例：2（代表 2M PHY）
    case secondaryPHY
    
    /// 键说明：设备初级 PHY，蓝牙 5.0 以上。
    /// 值类型：NSNumber
    /// 示例：1（代表 1M PHY）
    case primaryPHY
    
    /// 键说明：接收端次级 PHY，蓝牙 5.0。
    /// 值类型：NSNumber
    /// 示例：1（代表 1M PHY）
    case rxSecondaryPHY
    
    /// 键说明：接收端初级 PHY，蓝牙 5.0。
    /// 值类型：NSNumber
    /// 示例：1（代表 1M PHY）
    case rxPrimaryPHY
    
    /// 键说明：广播数据包被接收的时间戳。
    /// 值类型：NSTimeInterval
    /// 示例：749093671.948871
    case timestamp
    
    /*
     对于 rxPrimaryPHY、primaryPHY 和 secondaryPHY 这些用于蓝牙 5.0 及以上版本中的物理层 (PHY) 数据，目前官方文档和相关示例较少。
     这些属性主要用于扩展广告和更高效的数据传输。在 BLE (Bluetooth Low Energy) 中，PHY（物理层）代表设备支持的无线传输方式。

     PHY 值的常见类型：
     1M PHY：表示 1 Mbps 传输速率。
     2M PHY：表示 2 Mbps 传输速率。
     Coded PHY：表示使用了编码 PHY，以提供更长的传输范围，但数据速率较低。
     
     在实际使用中，如果设备支持蓝牙 5.0 或以上版本，你可以通过这些属性获取设备的物理层信息，这有助于分析设备的传输能力和范围。
     例如，当设备支持 2M PHY 时，它可以在相对较短的距离内实现更快的数据传输，而 Coded PHY 则适合需要更长传输距离但不太关注速率的场景。
     */
    

    /// 枚举值与 Core Bluetooth 键的映射
    var key: String {
        switch self {
        case .localName:
            return CBAdvertisementDataLocalNameKey
        case .txPowerLevel:
            return CBAdvertisementDataTxPowerLevelKey
        case .serviceUUIDs:
            return CBAdvertisementDataServiceUUIDsKey
        case .serviceData:
            return CBAdvertisementDataServiceDataKey
        case .manufacturerData:
            return CBAdvertisementDataManufacturerDataKey
        case .overflowServiceUUIDs:
            return CBAdvertisementDataOverflowServiceUUIDsKey
        case .isConnectable:
            return CBAdvertisementDataIsConnectable
        case .solicitedServiceUUIDs:
            return CBAdvertisementDataSolicitedServiceUUIDsKey
        case .appearance:
            return "kCBAdvDataAppearance"
        case .leSupportedFeatures:
            return "kCBAdvDataLESecureConnection"
        case .channel:
            return "kCBAdvDataChannel"
        case .secondaryPHY:
            return "kCBAdvDataSecondaryPHY"
        case .primaryPHY:
            return "kCBAdvDataPrimaryPHY"
        case .rxSecondaryPHY:
            return "kCBAdvDataRxSecondaryPHY"
        case .rxPrimaryPHY:
            return "kCBAdvDataRxPrimaryPHY"
        case .timestamp:
            return "kCBAdvDataTimestamp"
        }
    }
}
