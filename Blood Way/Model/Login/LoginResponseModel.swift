//
//  Login.swift
//  Blood Way
//
//  Created by Fahim Rahman on 6/1/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

import Foundation
import SwiftyJSON

struct LoginResponseModel {
    
    let response: String?
    let token: String?
    let email: String?
    let pk: Int?
    
    init(_ json: JSON) {
        response = json["response"].stringValue
        token = json["token"].stringValue
        email = json["email"].stringValue
        pk = json["pk"].intValue
    }
}
