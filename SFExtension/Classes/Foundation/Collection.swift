//
//  Collection.swift
//  SFExtension
//
//  Created by hsf on 2024/7/25.
//

import Foundation


// MARK: - Collection
public extension SFWrapper where Base: Collection {
    // 将 Base.Index 转换为 Int
    func indexToInt(_ index: Base.Index?) -> Int? {
        guard let index = index else { return nil }
        return base.distance(from: base.startIndex, to: index)
    }
    
    // 将 Int 转换为 Base.Index
    func intToIndex(_ intIndex: Int) -> Base.Index? {
        guard intIndex >= 0 && intIndex < base.count else { return nil }
        return base.index(base.startIndex, offsetBy: intIndex)
    }
}


// MARK: - swap
public extension SFWrapper where Base: MutableCollection & RangeReplaceableCollection, Base.Element: Equatable {
    /// 交换数组中两个元素
    mutating func swap(_ element1: Base.Element, _ element2: Base.Element) {
        guard let index1 = base.firstIndex(of: element1),
              let index2 = base.firstIndex(of: element2)
        else { return }
        base.swapAt(index1, index2)
    }
}


public extension SFWrapper where Base: MutableCollection & RangeReplaceableCollection & RandomAccessCollection, Base.Element: Equatable {
    /// 将指定元素移动到指定位置
    mutating func move(element: Base.Element, to index: Int) -> (Bool, Base) {
        guard let currentIndex = base.firstIndex(of: element) else {
            return (false, base)
        }
        let movedElement = base.remove(at: currentIndex)
        var targetIndex = base.startIndex
        targetIndex = base.index(targetIndex, offsetBy: index)
        if targetIndex >= base.endIndex {
            base.append(movedElement)
        } else {
            base.insert(movedElement, at: targetIndex)
        }
        return (true, base)
    }
}
