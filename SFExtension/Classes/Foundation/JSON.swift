//
//  JSON.swift
//  SFExtension
//
//  Created by hsf on 2023/11/18.
//

import Foundation

// MARK: - dictionary
public extension SFWrapper where Base: Collection {
    /// 支持任意类型的 Dictionary 转 JSON 数据
    func toJSONData(prettify: Bool = false) -> Data? {
        guard JSONSerialization.isValidJSONObject(base) else {
            print("集合转JSON数据失败。无效的JSON格式。")
            return nil
        }
        return serializeToJSON(base, prettify: prettify)
    }

    /// 支持任意类型的 Dictionary 转 JSON 字符串
    func toJSONString(prettify: Bool = false) -> String? {
        guard JSONSerialization.isValidJSONObject(base) else { return nil }
        guard let jsonData = serializeToJSON(base, prettify: prettify) else { return nil }
        return String(data: jsonData, encoding: .utf8)
    }

    // 私有方法，负责序列化
    private func serializeToJSON(_ object: Any, prettify: Bool) -> Data? {
        let options: JSONSerialization.WritingOptions = prettify ? .prettyPrinted : []
        do {
            let data = try JSONSerialization.data(withJSONObject: object, options: options)
            return data
        } catch {
            print("集合转JSON数据失败。\(error)")
            return nil
        }
    }
}


// MARK: - data
public extension SFWrapper where Base == Data {
    /// Data 转 JSON 字符串
    func toJSONString(encoding: String.Encoding = .utf8) -> String? {
        return String(data: base, encoding: encoding)
    }

    /// Data 转 Dictionary 支持任意类型
    func toDictionary(options: JSONSerialization.ReadingOptions = []) -> [String: Any]? {
        return deserializeFromJSON(base, options: options)
    }

    // 私有方法，负责反序列化
    private func deserializeFromJSON(_ data: Data, options: JSONSerialization.ReadingOptions) -> [String: Any]? {
        do {
            if let jsonObject = try JSONSerialization.jsonObject(with: data, options: options) as? [String: Any] {
                return jsonObject
            }
        } catch {
            print("JSON数据转字典失败。\(error)")
        }
        return nil
    }
}


// MARK: - string
public extension SFWrapper where Base == String {
    /// String 转 JSON 数据
    func toJSONData(encoding: String.Encoding = .utf8) -> Data? {
        return base.data(using: encoding)
    }

    /// String 转 Dictionary 支持任意类型
    func toDictionary(options: JSONSerialization.ReadingOptions = []) -> [String: Any]? {
        if let data = base.data(using: .utf8) {
            return deserializeFromJSON(data, options: options)
        }
        return nil
    }

    // 私有方法，负责反序列化
    private func deserializeFromJSON(_ data: Data, options: JSONSerialization.ReadingOptions) -> [String: Any]? {
        do {
            if let jsonObject = try JSONSerialization.jsonObject(with: data, options: options) as? [String: Any] {
                return jsonObject
            }
        } catch {
            print("JSON字符串转字典失败。\(error)")
        }
        return nil
    }
}

