//
//  UIColor+Extension.swift
//  JetDevsHomeWork
//
//  Created by Ravi Seta on 09/02/24.
//

import UIKit

struct AppColor {
    
    static let black = UIColor.black
    static let white = UIColor.white
    static let gray = UIColor.init(hexString: "bdbdbd")
    static let blue = UIColor.init(hexString: "155292")
}

extension UIColor {
    
    static var random: UIColor {
        return .init(hue: .random(in: 0...1), saturation: 1, brightness: 1, alpha: 1)
    }
    
    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt64()
        Scanner(string: hex).scanHexInt64(&int)
        let aaa, rrr, ggg, bbb: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (aaa, rrr, ggg, bbb) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (aaa, rrr, ggg, bbb) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (aaa, rrr, ggg, bbb) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (aaa, rrr, ggg, bbb) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(rrr) / 255, green: CGFloat(ggg) / 255, blue: CGFloat(bbb) / 255, alpha: CGFloat(aaa) / 255)
    }
}
