//
//  LoginViewController.swift
//  JetDevsHomeWork
//
//  Created by Ravi Seta on 08/02/24.
//

import UIKit
import MaterialComponents.MaterialTextControls_OutlinedTextFields

class LoginViewController: UIViewController {

    @IBOutlet weak var txtEmail: MDCOutlinedTextField!
    @IBOutlet weak var txtPassword: MDCOutlinedTextField!
    @IBOutlet weak var btnLogin: UIButton!
   
   // MARK: - View Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
    }
    
    private func setLayout() {
        self.txtEmail.setTextfield(placeholder: "Email")
        self.txtPassword.setTextfield(placeholder: "Password")
    
        self.btnLogin.setButton(bgColor: AppColor.gray)
        
        navigationItems()
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
