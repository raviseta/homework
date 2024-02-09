//
//  UIButton+Extension.swift
//  JetDevsHomeWork
//
//  Created by Ravi Seta on 09/02/24.
//

import UIKit

extension UIButton {
    
    func setButton(bgColor: UIColor = AppColor.blue) {
        self.backgroundColor = bgColor
        self.titleLabel?.font = UIFont.init(name: AppFont.bold, size: AppFontSize.medium)
        self.layer.cornerRadius = cornerRadius
    }
}
