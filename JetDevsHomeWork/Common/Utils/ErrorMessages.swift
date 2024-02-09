//
//  ErrorMessages.swift
//  JetDevsHomeWork
//
//  Created by Ravi Seta on 09/02/24.
//

import Foundation

enum LoginValidationError {
    case emptyEmail
    case emptyPassword
    case invalidEmail

    var errorMessage: String {
        switch self {
        case .emptyEmail:
            return "Please enter your email id"
        case .emptyPassword:
            return "Please enter your password"
        case .invalidEmail:
            return "Invalid Email id"
        }
    }
}
