//
//  LoginViewController.swift
//  JetDevsHomeWork
//
//  Created by Ravi Seta on 08/02/24.
//

import UIKit
import MaterialComponents.MaterialTextControls_OutlinedTextFields
import RxSwift
import RxCocoa

class LoginViewController: UIViewController {
    
    @IBOutlet weak var txtEmail: MDCOutlinedTextField!
    @IBOutlet weak var txtPassword: MDCOutlinedTextField!
    @IBOutlet weak var btnLogin: UIButton!
    
    var disposeBag = DisposeBag()
    
    // MARK: - Init methods
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - View Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
    }
    
    private func setLayout() {
        self.txtEmail.setTextfield(placeholder: "Email")
        self.txtPassword.setTextfield(placeholder: "Password")
        
        self.btnLogin.setButton(bgColor: AppColor.gray)
        setLoginBtnEnable()
        
        navigationItems()
    }
    
    private func setLoginBtnEnable() {
        if self.txtEmail.text != "" && self.txtPassword.text != "" {
            self.btnLogin.setButton(bgColor: AppColor.blue)
            self.btnLogin.isEnabled = true
        } else {
            self.btnLogin.setButton(bgColor: AppColor.gray)
            self.btnLogin.isEnabled = false
        }
    }
    
    private func navigationItems() {
        self.navigationController?.navigationBar.isHidden = false
        self.navigationItem.setHidesBackButton(true, animated: true)
        let leftButtonItem = UIBarButtonItem(
            image: UIImage(named: "close"),
            style: .plain,
            target: self,
            action: #selector(rightButtonAction(sender:))
        )
        self.navigationItem.leftBarButtonItem = leftButtonItem
    }
}

// MARK: - Button Actions

extension LoginViewController {
    
    @objc private func rightButtonAction(sender: UIBarButtonItem) {
        self.navigationController?.popViewController(animated: true)
    }
}
