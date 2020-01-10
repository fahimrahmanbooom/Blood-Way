//
//  SignUpViewController.swift
//  Blood Way
//
//  Created by Fahim Rahman on 6/1/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class SignUpViewController: UIViewController, UIScrollViewDelegate {
    
    
    // Outlets
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var signUp: UIButton!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var areaTextField: UITextField!
    
    @IBOutlet weak var cityTextField: UITextField!
    
    @IBOutlet weak var BloodGroupTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    // Variables
    
    var email: String?
    var userName: String?
    var area: String?
    var city: String?
    var bloodGroup: String?
    var age: String?
    var phone: String?
    var password: String?
    var confirmPassword: String?

    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.delegate = self
        signUp.layer.cornerRadius = 25
    }
    
    
    
    // Sign Up Button
    @IBAction func signUpButton(_ sender: UIButton) {
        
        if email != "" && userName != "" && area != "" && city != "" && bloodGroup != "" && age != "" && phone != "" && password != "" && confirmPassword != "" {
        email = emailTextField.text
        userName = userNameTextField.text
        area = areaTextField.text
        city = cityTextField.text
        bloodGroup = BloodGroupTextField.text
        age = ageTextField.text
        phone = phoneNumberTextField.text
        password = passwordTextField.text
        confirmPassword = confirmPasswordTextField.text
        
        signUpMethod()
        }
    }
    
    // Post sign up credentials to the server
    
    func signUpMethod() {
        
        let signUpParameters = SignUpRequestModel(email: "\(email!)", username: "\(userName!)", area: "\(area!)", city: "\(city!)", blood_group: "\(bloodGroup!)", age: "\(age!)", mobile_number: "\(phone!)", password: "\(password!)", password2: "\(confirmPassword!)")
        
        
        AF.request("http://192.168.2.9:8000/api/v1/account/register",
                   method: .post,
                   parameters: signUpParameters
                   ).response { response in

            debugPrint(response)
        }
    }
    
    
    // Only Vertical Scroll enabled
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.x != 0 {
            scrollView.contentOffset.x = 0
        }
    }
}
