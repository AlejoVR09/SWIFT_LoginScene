//
//  LoginView.swift
//  LoginActivity
//
//  Created by Alejandro Vanegas Rondon on 17/01/24.
//

import UIKit

protocol LoginViewDelegate {
    
    func loginView(_ loginView: LoginView, userName: String?, password: String?)
}

class LoginView: UIView {

    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    var delegate: LoginViewDelegate?
    
    
    @IBAction func send(_ sender: Any) {
        delegate?.loginView(self, userName: self.txtUserName.text, password: self.txtPassword.text)
    }
    
}
