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

// MARK: - Pinyin
public extension SFWrapper where Base == String {
    /// 将任一字符串转换为英文字母字符串
    public var pinyin: String {
        let mutableString = NSMutableString(string: base)
        
        // 应用 kCFStringTransformToLatin 变换将所有非英文文本转换为拉丁字母表示, 小写不带音标。
        CFStringTransform(mutableString, nil, "Any-Latin; Latin-ASCII; Any-Lower" as CFString, false)
        
        // 分词去掉空格
        let tokenizer = CFStringTokenizerCreate(nil, mutableString, CFRangeMake(0, CFStringGetLength(mutableString)), 0, CFLocaleCopyCurrent())
        var mutableTokens: [String] = []
        var type: CFStringTokenizerTokenType
        repeat {
            type = CFStringTokenizerAdvanceToNextToken(tokenizer)
            let range = CFStringTokenizerGetCurrentTokenRange(tokenizer)
            let token = CFStringCreateWithSubstring(nil, mutableString, range) as NSString
            mutableTokens.append(token as String)
        } while type != []
        //生成最终字符串
        let joined = mutableTokens.joined()
        return joined.replacingOccurrences(of: "'", with: "")
    }
}

// MARK: - Regex
/**
 * Regex（custom）
 * - ✅ 手机号
 * - ✅ 邮箱号
 * - ✅ 验证码（可设置位数）
 * - ✅ 数字（可设置位数范围）
 * - ✅ 金额（可设置小数位数）
 * - ✅ 中文
 * - ✅ 自定义正则表达式
 */
public enum SFRegexType {
    // 手机号
    case phone
    // 邮箱号
    case email
    // 验证码（位数）
    case code(Int)
    // 数字（位数范围）
    case number(Int, Int)
    // 金额（最多小数位数）
    case money(Int)
    // 中文
    case chinese
    // 密码格式必须包含大小写字母和数字的组合，长度在8-16之间，不能使用特殊字符
    case password
    // 自定义（正则表达式）
    case custom(String)
    
    public func pattern() -> String {
        var pattern = ""
        switch self {
        case .phone:
            pattern = "^\\d{11}$"
        case .email:
            pattern = "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$"
        case let .code(num):
            pattern = "^\\d{\(num)}$"
        case let .number(min, max):
            pattern = "^\\d{\(min),\(max)}$"
        case let .money(num):
            pattern = "(^[1-9]([0-9]+)?(\\.[0-9]{1,\(num)})?$)|(^[0-9](\\.[0-9]{1,\(num)})?$)"
        case .chinese:
            pattern = "^[^\\u4e00-\\u9fa5]{0,}$"
        case .password:
            pattern = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])[a-zA-Z0-9]{8,16}$"
        case let .custom(str):
            pattern = str
        }
        return pattern
    }
}

/**
 * Regex（custom）
 * - ✅ 正则匹配是否成功
 * - ✅ 正则匹配提取
 * - ✅ 正则替换
 */
public extension SFWrapper where Base == String  {
    
    /// 正则匹配是否成功
    /// - Parameter type: 类型
    /// - Returns: 是否匹配
    func isRegex(type: SFRegexType) -> Bool  {
        return isRegex(type.pattern())
    }
    
    /// 正则匹配提取
    /// - Parameter type: 类型
    /// - Returns: 匹配的结果
    func regex(type: SFRegexType) -> [String] {
        return regex(type.pattern())
    }
    
    /// 正则替换
    /// - Parameters:
    ///   - type: 类型
    ///   - replace: 替换的字符
    /// - Returns: 替换的结果
    func regex(type: SFRegexType, replace: String) -> String {
        return regex(type.pattern(), replace: replace)
    }

}

/**
 * Regex
 * - ✅ 正则匹配
 * - ✅ 正则替换
 */
public extension SFWrapper where Base == String {
    
    /// 正则匹配是否成功
    /// - Parameter pattern: 正则表达式
    /// - Returns: 是否匹配
    func isRegex(_ pattern: String) -> Bool  {
        return regex(pattern).count > 0
    }
        
    /// 正则匹配
    /// - Parameter pattern: 正则表达式
    /// - Returns: 匹配的结果
    func regex(_ pattern: String) -> [String] {
        do {
            let regex = try NSRegularExpression(pattern: pattern, options: [])
            let matches = regex.matches(in: base, options: [], range: NSMakeRange(0, base.count))
            var data: [String] = []
            for item in matches {
                let string = (base as NSString).substring(with: item.range)
                data.append(string)
            }
            return data
        }
        catch {
            return []
        }
    }
    
    /// 正则替换
    /// - Parameters:
    ///   - pattern: 正则表达式
    ///   - replace: 替换的字符
    /// - Returns: 替换后的结果
    func regex(_ pattern: String, replace: String) -> String {
        do {
            let regex = try NSRegularExpression(pattern: pattern, options: .caseInsensitive)
            let modified = regex.stringByReplacingMatches(in: base, options: .reportProgress, range: NSRange(location: 0, length: base.count), withTemplate: replace)
            return modified
        }
        catch {
            return base
        }
    }
}

public extension SFWrapper where Base == String {
    /// 转换成密文
    public var secret: String {
        if base.sf.isRegex(type: .phone) {
            return base.sf.regex("(\\d{3})(\\d{4})(\\d{4})", replace: "$1****$3")
        }
        else if base.sf.isRegex(type: .email) {
            let components = base.components(separatedBy: "@")
            if components.count == 2 {
                let username = components[0]
                let domain = components[1]
                let processedUsername = String(username.prefix(1)) + "***"
                return "\(processedUsername)@\(domain)"
            }
        }
        return base
    }
}

// MARK: - Crypto
import CryptoKit

extension String {
    public static var salt = "AsfhikHIHIu9887THoi0HLKMLihuHG067865"
}
extension SFWrapper where Base == String {
    public func sha256(salt: String? = nil) -> String? {
        let value = base + (salt ?? String.salt)
        guard let data = value.data(using: .utf8) else { return nil }
        let hash = SHA256.hash(data: data)
        return hash.compactMap { String(format: "%02x", $0) }.joined()
    }
}
