//
//  UserInformation.swift
//  SignUp
//
//  Created by David Yoon on 2021/12/01.
//

import Foundation


class UserInformation {
    static let shared: UserInformation = UserInformation()
    
    var name: String?
    var age: String?
    
    private init() {
        
    }
}
