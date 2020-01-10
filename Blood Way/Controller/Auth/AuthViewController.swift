//
//  AuthViewController.swift
//  Blood Way
//
//  Created by Fahim Rahman on 6/1/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

import UIKit

var token: String?
var pk: Int?

let baseUrl = "http://127.0.0.1:8000/"
class AuthViewController: UIViewController {

    
    @IBOutlet weak var authPageLogin: UIButton!
    
    @IBOutlet weak var authPageSignUp: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        authPageLogin.layer.cornerRadius = 25
        authPageSignUp.layer.cornerRadius = 25
    }
    
    
    @IBAction func loginButton(_ sender: UIButton) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "LoginViewController")
        navigationController?.pushViewController(vc!, animated: true)
    }
    
    
    @IBAction func signUpButton(_ sender: UIButton) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "SignUpViewController")
        navigationController?.pushViewController(vc!, animated: true)
        
    }
}

extension UINavigationController {
    
    override open var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
