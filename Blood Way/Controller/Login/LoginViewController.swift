//
//  LoginViewController.swift
//  Blood Way
//
//  Created by Fahim Rahman on 6/1/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class LoginViewController: UIViewController {
    
    var responseModel = [LoginResponseModel]()
    
    //Outlets
    
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var login: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        login.layer.cornerRadius = 25
        phoneNumberTextField.text = nil
        passwordTextField.text = nil
    }
    
    
    // Login Button
    @IBAction func loginButton(_ sender: UIButton) {
        
        if  phoneNumberTextField.text != nil && passwordTextField.text  != nil {
            
            print("working")
            loginMethod()
        }
        else {
            print("TEXT FIELD IS EMPTY!!")
        
        }
    }
    
    // Forget button
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        
        
    }
    
    
    // Post login credentials to the server
    func loginMethod() {
        
        let loginParameter = LoginRequestModel(username: "\(phoneNumberTextField.text!)", password: "\(passwordTextField.text!)")
        
        let headers: HTTPHeaders = ["Accept": "application/json"]
        
        AF.request("\(baseUrl)api/v1/account/login",
                   method: .post,
                   parameters: loginParameter, headers: headers
        ).response { response in
            
            //debugPrint(response)
            
            let items = JSON(response.value as Any)
            
            DispatchQueue.main.async {
                
                let model = LoginResponseModel(items)
                self.responseModel.append(model)
                //print(self.responseModel)
                print(token = self.responseModel[0].token!)
                pk = self.responseModel[0].pk!
                
                if self.responseModel[0].token != nil {
                    
                    let vc: MenuViewController = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
                        self.navigationController?.pushViewController(vc, animated: true)
                    
                }
                else {
                    print("Your email or password does't match or you do not have an account. Please sign up")
                }
            }
        } .resume()
    }
}
