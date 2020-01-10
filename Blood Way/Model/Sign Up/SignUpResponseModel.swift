//
//  SignUp.swift
//  Blood Way
//
//  Created by Fahim Rahman on 7/1/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

import Foundation
import SwiftyJSON

struct SignUpResponseModel {

    let response: String?
    let pk: Int?
    let email: String?
    let username: String?
    let area: String?
    let city: String?
    let bloodGroup: String?
    let age: String?
    let mobileNumber: String?
    let notification: Any?
    let status: Bool?
    let token: String?

    
    init(_ json: JSON) {
        response = json["response"].stringValue
        pk = json["pk"].intValue
        email = json["email"].stringValue
        username = json["username"].stringValue
        area = json["area"].stringValue
        city = json["city"].stringValue
        bloodGroup = json["blood_group"].stringValue
        age = json["age"].stringValue
        mobileNumber = json["mobile_number"].stringValue
        notification = json["notification"]
        status = json["status"].boolValue
        token = json["token"].stringValue
    }
}
