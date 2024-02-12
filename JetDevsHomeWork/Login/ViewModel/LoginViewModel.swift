//
//  LoginViewModel.swift
//  JetDevsHomeWork
//
//  Created by Ravi Seta on 09/02/24.
//

import Foundation
import RxSwift

protocol LoginViewModelProtocol {
    
    var showError: ((String) -> Void)? { get set }
    var onSuccess: (() -> Void)? { get set }

}

class LoginViewModel {
    
    // MARK: - Properties

    private let apiManager: APIManager
    private let disposeBag = DisposeBag()
    
    var onSuccess: (() -> Void)?
    var showError: ((String) -> Void)?

    // MARK: - Init Method

    init(apiManager: APIManager) {
        self.apiManager = apiManager
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
    
    // MARK: - Login API call

    func doLogin(input: LoginInput) {
        
        let loginObservable: Observable<LoginResponse> = self.apiManager.request(endPoint: .login, requestParameter: input)
        
        loginObservable
            .observeOn(MainScheduler.instance)
            .subscribe(onNext: { loginResponse in
                saveUserData(userData: loginResponse)
            }, onError: { error in
                self.showError?(error.localizedDescription)
            }, onCompleted: {
                self.onSuccess?()
            // TODO: - Redirect to next screen
            })
            .disposed(by: disposeBag)
    }
    
}
