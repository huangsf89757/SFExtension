//
//  JSON.swift
//  SFExtension
//
//  Created by hsf on 2023/11/18.
//

import Foundation

// MARK: - dictionary
public extension SFWrapper where Base: Collection, Base.Element == (key: String, value: Any) {
    func toJSONData(prettify: Bool = false) -> Data? {
        guard JSONSerialization.isValidJSONObject(base) else {
            print("集合转JSON数据失败。无效的JSON格式。")
            return nil
        }

        let options: JSONSerialization.WritingOptions = prettify ? .prettyPrinted : []
        do {
            let data = try JSONSerialization.data(withJSONObject: base, options: options)
            return data
        } catch {
            print("集合转JSON数据失败。\(error)")
            return nil
        }
    }

    func toJSONString(prettify: Bool = false) -> String? {
        guard JSONSerialization.isValidJSONObject(base) else { return nil }

        let options: JSONSerialization.WritingOptions = prettify ? .prettyPrinted : []
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: base, options: options)
            return String(data: jsonData, encoding: .utf8)
        } catch {
            print("集合转JSON字符串失败。\(error)")
            return nil
        }
    }
}


// MARK: - data
public extension SFWrapper where Base == Data {
    func toJSONString(encoding: String.Encoding = .utf8) -> String? {
        return String(data: base, encoding: encoding)
    }

    func toDictionary(options: JSONSerialization.ReadingOptions = []) -> [String: Any]? {
        do {
            if let jsonObject = try JSONSerialization.jsonObject(with: base, options: options) as? [String: Any] {
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
    func toJSONData(encoding: String.Encoding = .utf8) -> Data? {
        return base.data(using: encoding)
    }

    func toDictionary(options: JSONSerialization.ReadingOptions = []) -> [String: Any]? {
        if let data = base.data(using: .utf8) {
            do {
                if let jsonObject = try JSONSerialization.jsonObject(with: data, options: options) as? [String: Any] {
                    return jsonObject
                }
            } catch {
                print("JSON字符串转字典失败。\(error)")
            }
        }
        return nil
    }
}
