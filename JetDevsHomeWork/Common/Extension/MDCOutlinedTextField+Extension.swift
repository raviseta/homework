//
//  Extension.swift
//  JetDevsHomeWork
//
//  Created by Ravi Seta on 09/02/24.
//

import MaterialComponents.MaterialTextControls_OutlinedTextFields
import UIKit

extension MDCOutlinedTextField {
    
    func setTextfield(placeholder: String) {
        self.label.text = placeholder
        self.label.font = UIFont.init(name: AppFont.regular, size: AppFontSize.small)
        self.labelBehavior = .floats
        
        self.font = UIFont.init(name: AppFont.regular, size: AppFontSize.small)
        
        self.setOutlineColor(AppColor.blue, for: .editing)
        self.setOutlineColor(AppColor.gray, for: .normal)
    }
}
