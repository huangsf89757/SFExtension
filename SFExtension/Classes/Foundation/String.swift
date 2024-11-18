//
//  String.swift
//  SFExtension
//
//  Created by hsf on 2023/11/26.
//

import Foundation


// MARK: - string
public extension SFWrapper where Base == String {
    
    /// 截取字符串
    /// - Parameter start: 起始索引（包含）
    /// - Parameter end: 结束索引（不包含）
    func substring(start: Int, end: Int) -> String {
        let startIndex = base.index(base.startIndex, offsetBy: max(0, min(start, base.count)))
        let endIndex = base.index(base.startIndex, offsetBy: max(0, min(end, base.count)))
        return String(base[startIndex..<endIndex])
    }
    
    /// 是否为UUID字符串
    func isUUID() -> Bool {
        let uuidRegex = try? NSRegularExpression(pattern: "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$", options: .caseInsensitive)
        let range = NSRange(location: 0, length: base.utf16.count)
        return uuidRegex?.firstMatch(in: base, options: [], range: range) != nil
    }
    
    /// 16进制字符串（可以有空格）转换成二进制数据
    func toData() -> Data {
        let hex = base.replacingOccurrences(of: " ", with: "")
        var byteArray = [UInt8]()
        for i in stride(from: 0, to: hex.count, by: 2) {
            let byteStr = substring(start: i, end: i + 2)
            if let byte = UInt8(byteStr, radix: 16) {
                byteArray.append(byte)
            }
        }
        return Data(byteArray)
    }
}

public extension SFWrapper where Base == String {
    /// 重复自己n次
    func repect(_ count: Int) -> String {
        var str = ""
        for _ in 0..<count {
            str.append(base)
        }
        return str
    }
    
    /// 添加
    func append(_ str: String, repect count: Int) -> String? {
        let appendStr = str.sf.repect(count)
        return base.appending(appendStr)
    }
    
    /// Bool value from string (if applicable).
    ///
    ///        "1".bool -> true
    ///        "False".bool -> false
    ///        "Hello".bool = nil
    ///
    var bool: Bool? {
        let selfLowercased = base.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
        switch selfLowercased {
        case "true", "yes", "1":
            return true
        case "false", "no", "0":
            return false
        default:
            return nil
        }
    }
    
    /// String with no spaces or new lines in beginning and end.
    ///
    ///        "   hello  \n".trimmed -> "hello"
    ///
    var trimmed: String {
        return base.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    /// Check if string is a valid URL.
    ///
    ///        "https://google.com".isValidUrl -> true
    ///
    var isValidUrl: Bool {
        return URL(string: base) != nil
    }
    
    /// Check if string contains one or more instance of substring.
    ///
    ///        "Hello World!".contain("O") -> false
    ///        "Hello World!".contain("o", caseSensitive: false) -> true
    ///
    /// - Parameters:
    ///   - string: substring to search for.
    ///   - caseSensitive: set true for case sensitive search (default is true).
    /// - Returns: true if string contains one or more instance of substring.
    func contains(_ string: String, caseSensitive: Bool = true) -> Bool {
        if !caseSensitive {
            return base.range(of: string, options: .caseInsensitive) != nil
        }
        return base.range(of: string) != nil
    }
    
    func like(_ pattern: String) -> Bool {
        let escapedPattern = NSRegularExpression.escapedPattern(for: pattern)
        let wildcardPattern = escapedPattern.replacingOccurrences(of: "%", with: ".*")
        
        do {
            let regex = try NSRegularExpression(pattern: "^" + wildcardPattern + "$", options: [.caseInsensitive])
            let range = NSRange(location: 0, length: base.utf16.count)
            return regex.firstMatch(in: base, options: [], range: range) != nil
        } catch {
            print("正则表达式错误: \(error.localizedDescription)")
            return false
        }
    }
}


