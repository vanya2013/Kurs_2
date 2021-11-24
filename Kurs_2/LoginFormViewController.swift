//
//  LoginFormViewController.swift
//  Kurs_2
//
//  Created by Ivan Bezgin on 24.11.2021.
//

import UIKit

class LoginFormViewController: UIViewController {

    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let toNextView = "fromLoginFormToNextView"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func pressLoginButton(_ sender: UIButton) {
        
        guard let login = loginTextField.text,
              let password = passwordTextField.text
        else { return }
        
        if login.isEmpty || password.isEmpty { return }
        else { performSegue(withIdentifier: toNextView, sender: nil) }
        
    }
    
}
