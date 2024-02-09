//
//  String+Extension.swift
//  JetDevsHomeWork
//
//  Created by Ravi Seta on 09/02/24.
//

import UIKit

extension String {

    public var trimmed: String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }

    var isValidEmailID: Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailTest: NSPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailTest.evaluate(with: self)
    }
}
