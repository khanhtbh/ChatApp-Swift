//
//  UserInteractor.swift
//  ChatApp
//
//  Created by Kei on 11/24/18.
//  Copyright © 2018 Kei. All rights reserved.
//

import UIKit

fileprivate class UserPersistence: NSObject {
    private override init() {
        super.init()
    }
    static let shared = UserPersistence()
    
    var user: User?
}



class UserInteractor: NSObject {
    func getLoginUser() -> User? {
        return UserPersistence.shared.user
    }
    
    func register(with userName: String, and password: String) {
        
    }
    
    func login(with userName: String, and password: String) {
        
    }
}
