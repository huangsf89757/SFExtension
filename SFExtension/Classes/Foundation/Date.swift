//
//  Date.swift
//  SFExtension
//
//  Created by hsf on 2024/11/21.
//

import Foundation

// MARK: - Date
public extension SFWrapper where Base == Date {
    
    /// 获取当前日期的起始时间
    public func startOfDay() -> Date {
        return Calendar.current.startOfDay(for: base)
    }
    
    /// 获取当前日期的结束时间
    public func endOfDay() -> Date {
        let startOfNextDay = Calendar.current.date(byAdding: .day, value: 1, to: startOfDay())!
        return Calendar.current.date(byAdding: .second, value: -1, to: startOfNextDay)!
    }
    
    /// 判断是否是同一天
    public func isSameDay(as otherDate: Date) -> Bool {
        return Calendar.current.isDate(base, inSameDayAs: otherDate)
    }
    
    /// 获取日期的年份、月份、日等组件
    public func component(_ component: Calendar.Component) -> Int {
        return Calendar.current.component(component, from: base)
    }
    
    /// 添加日期组件
    public func adding(_ component: Calendar.Component, value: Int) -> Date {
        return Calendar.current.date(byAdding: component, value: value, to: base)!
    }
    
    /// 计算两个日期之间的天数差
    public func daysBetween(to otherDate: Date) -> Int {
        let start = Calendar.current.startOfDay(for: base)
        let end = Calendar.current.startOfDay(for: otherDate)
        let components = Calendar.current.dateComponents([.day], from: start, to: end)
        return components.day ?? 0
    }
}
