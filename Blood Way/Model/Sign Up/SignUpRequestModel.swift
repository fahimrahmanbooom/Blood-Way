//
//  SignUpRequestModel.swift
//  Blood Way
//
//  Created by Fahim Rahman on 7/1/20.
//  Copyright © 2020 Fahim Rahman. All rights reserved.
//

import Foundation

struct SignUpRequestModel: Encodable {
    
    let email: String?
    let username: String?
    let area: String?
    let city: String?
    let blood_group: String?
    let age: String?
    let mobile_number: String?
    let password: String?
    let password2: String?
}
