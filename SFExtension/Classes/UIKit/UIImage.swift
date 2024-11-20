//
//  UIImage.swift
//  SFExtension
//
//  Created by hsf on 2023/11/14.
//

import Foundation
import UIKit

// MARK: - ImageCache
class ImageCache {
    static let shared = NSCache<NSString, UIImage>()
    
    static func image(name: String, bundle: Bundle? = nil, traitCollection: UITraitCollection? = nil) -> UIImage? {
        let cacheKey = "\(bundle?.bundleIdentifier ?? "main").\(name)" as NSString
        if let cachedImage = shared.object(forKey: cacheKey) {
            return cachedImage
        }
        let image = UIImage(named: name, in: bundle, compatibleWith: traitCollection)
        if let image = image {
            shared.setObject(image, forKey: cacheKey)
        }
        return image
    }
}

// MARK: - init
public extension SFWrapper where Base: UIImage {
    /// 创建
    /// - Parameters:
    ///   - name: 图片名称
    ///   - cls: 所在类名，nil则为默认的main bundle
    ///   - resource: 所在库的资源文件，nil则为默认的库名
    /// - Returns: image
    static func image(name: String?, cls: AnyClass?, resource: String? = nil, traitCollection: UITraitCollection? = nil) -> UIImage? {
        guard let name = name else { return nil }
        if let cls = cls {
            return image(name: name, bundle: Bundle.sf.bundle(cls: cls, resource: resource), traitCollection: traitCollection)
        }
        return image(name: name, bundle: Bundle.main)
    }
    
    /// 创建
    /// - Parameters:
    ///   - name: 图片名称
    ///   - bundle: 所在bundle
    /// - Returns: image
    static func image(name: String?, bundle: Bundle? = Bundle.main, traitCollection: UITraitCollection? = nil) -> UIImage? {
        guard let name = name else { return nil }
        return ImageCache.image(name: name, bundle: bundle, traitCollection: traitCollection)
    }
    
    /// 创建
    /// - Parameters:
    ///   - color: 颜色
    ///   - size: 大小
    /// - Returns: image
    static func image(color: UIColor?, size: CGSize = CGSize(width: 1, height: 1)) -> UIImage? {
        guard let color = color else { return nil }
        guard (size.width > 0 || size.height > 0) else { return nil }
        let rect = CGRect(x: 0.0, y: 0.0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0)
        guard let context = UIGraphicsGetCurrentContext() else { return nil }
        context.setFillColor(color.cgColor)
        context.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext()
        return image;
    }
}


// MARK: - size
public extension SFWrapper where Base: UIImage {
    
    /// resize
    func resize(to targetSize: CGSize) -> UIImage {
        let widthRatio = targetSize.width / base.size.width
        let heightRatio = targetSize.height / base.size.height
        let scaleFactor = min(widthRatio, heightRatio)
        let scaledImageSize = CGSize(
            width: base.size.width * scaleFactor,
            height: base.size.height * scaleFactor
        )
        let renderer = UIGraphicsImageRenderer(size: scaledImageSize)
        return renderer.image { _ in
            base.draw(in: CGRect(origin: .zero, size: scaledImageSize))
        }
    }
}
