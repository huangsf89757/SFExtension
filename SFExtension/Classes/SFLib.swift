//
//  SFLib.swift
//  SFExtension
//
//  Created by hsf on 2024/11/23.
//

import Foundation

// MARK: - SFLib
open class SFLib {}

// MARK: - SFExtensionLib
public class SFExtensionLib: SFLib {
    public static var bundle: Bundle? = Bundle.sf.bundle(cls: SFExtensionLib.self, resource: nil)
}
