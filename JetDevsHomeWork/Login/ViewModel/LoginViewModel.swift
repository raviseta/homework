//
//  LoginViewModel.swift
//  JetDevsHomeWork
//
//  Created by Ravi Seta on 09/02/24.
//

import Foundation

protocol LoginViewModelProtocol {
    
    var showError: ((String) -> Void)? { get set }
}

class LoginViewModel {
    
    // MARK: - Properties

    var showError: ((String) -> Void)?
    
    init() {
    }
    
    func validateLoginInput(input: LoginInput) -> LoginValidationError? {

        let email = input.email.trimmed
        let password = input.password

        if email.isEmpty {
            return .emptyEmail
        } else {
            if !email.isValidEmailID {
                return .invalidEmail
            }
        }

        if password.isEmpty {
            return .emptyPassword
        }

        return nil
    }
    
}
