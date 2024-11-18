//
//  Data.swift
//  SFExtension
//
//  Created by hsf on 2023/12/27.
//

import Foundation

// MARK: - data
public extension SFWrapper where Base == Data {
    /// 转换为 ASCII 字符串
    func toAscii() -> String {
        return subdata2ascii(start: 0, end: base.count)
    }
    
    /// 将指定范围的数据转换为 ASCII 字符串
    /// - Parameters:
    ///   - start: 起始索引（包含）
    ///   - end: 结束索引（不包含）
    func subdata2ascii(start: Int, end: Int) -> String {
        return String(data: base[start..<end], encoding: .ascii) ?? ""
    }
    
    /// 转换为十六进制字符串
    /// - Parameter withSpace: 可选参数，默认为 true。指定输出字符串中每两个字节之间是否插入空格
    func toHex(withSpace: Bool = true) -> String {
        return subdata2hex(start: 0, end: base.count, withSpace: withSpace)
    }
        
    /// 将指定范围的数据转换为十六进制字符串
    /// - Parameters:
    ///   - start: 起始索引（包含）
    ///   - end: 结束索引（不包含）
    ///   - withSpace: 可选参数，默认为 true。指定输出字符串中每两个字节之间是否插入空格
    func subdata2hex(start: Int, end: Int, withSpace: Bool = true) -> String {
        let hex = base[start..<end].map { String(format: "%02X", $0) }.joined(separator: withSpace ? " " : "")
        return hex
    }
}

// MARK: - memory
extension SFWrapper where Base == Data {
    /// 格式化内存大小，返回字符串表示
    func formattedMemorySize() -> String {
        let byteFormatter = ByteCountFormatter()
        byteFormatter.allowedUnits = [.useBytes, .useKB, .useMB, .useGB]
        byteFormatter.countStyle = .file
        return byteFormatter.string(fromByteCount: Int64(base.count))
    }
}
