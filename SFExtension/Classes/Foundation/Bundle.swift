//
//  Bundle.swift
//  SFExtension
//
//  Created by hsf on 2023/11/26.
//

import Foundation

// MARK: - bundle
public extension SFWrapper where Base: Bundle {
    /// 获取bundle
    /// - Parameters:
    ///   - cls: 所在类
    ///   - resource: bundle名称
    /// - Returns: bundle
    static func bundle(cls: AnyClass, resource: String? = nil) -> Bundle? {
        let bundle = Bundle.init(for: cls)
        var path: String? = nil
        if let resource = resource {
            path = bundle.path(forResource: resource, ofType: "bundle")
        }else{
            let infoDic = bundle.infoDictionary ?? [:]
            let name = infoDic["CFBundleName"] as? String
            path = bundle.path(forResource: name, ofType: "bundle")
        }
        guard let path = path else { return nil }
        let res = Bundle.init(path: path)
        return res
    }
}
