//
//  APIConstant.swift
//  ChatApp
//
//  Created by Kei on 11/24/18.
//  Copyright © 2018 Kei. All rights reserved.
//

import Foundation

struct APIUrl {
    
    static let unknown = ""
    
    static let domain = IsDevEnvironment ? "https://localhost:3000/" : ""
}
