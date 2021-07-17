//
//  Color.swift
//  DaangnClone
//
//  Created by miori Lee on 2021/07/16.
//

import UIKit

extension UIColor {
    // MARK: hex code를 이용하여 정의
    // ex. UIColor(hex: 0xF5663F)
    convenience init(hex: UInt, alpha: CGFloat = 1.0) {
        self.init(
            red: CGFloat((hex & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((hex & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(hex & 0x0000FF) / 255.0,
            alpha: CGFloat(alpha)
        )
    }
    
    // MARK: 메인 테마 색 또는 자주 쓰는 색을 정의
    // Reference : notion.so/e10010519eb9465aa703a6551c05eb63
    class var daangn: UIColor { UIColor(hex: 0xFF7E36) }
    class var stem : UIColor { UIColor(hex: 0x00B493)}

}

