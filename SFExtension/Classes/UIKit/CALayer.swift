//
//  CALayer.swift
//  SFExtension
//
//  Created by hsf on 2023/12/27.
//

import Foundation
import UIKit

// MARK: - animation
public extension SFWrapper where Base: CALayer {
    /// 暂停动画
    func pauseAnimation() {
        let pausedTime = base.convertTime(CACurrentMediaTime(), from: nil)
        base.speed = 0.0
        base.timeOffset = pausedTime
    }

    /// 恢复动画
    func resumeAnimation() {
        let pausedTime = base.timeOffset
        base.speed = 1.0
        base.timeOffset = 0.0
        base.beginTime = 0.0
        let timeSincePause = base.convertTime(CACurrentMediaTime(), from: nil) - pausedTime
        base.beginTime = timeSincePause
    }
}
