//
//  LoginViewController.swift
//  LoginActivity
//
//  Created by Alejandro Vanegas Rondon on 17/01/24.
//

import UIKit

class LoginViewController: UIViewController {
    
    var loginView: LoginView? {
        self.view as? LoginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginView?.delegate = self
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension LoginViewController: LoginViewDelegate {
    func loginView(_ loginView: LoginView, userName: String?, password: String?) {
        print("in")
        guard let userName = userName, !userName.isEmpty else {
            return
        }
        
        guard let password = password, !password.isEmpty else {
            return
        }
        
        print("Success")
    }
}
