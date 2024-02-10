//
//  APIEndPoint.swift
//  JetDevsHomeWork
//
//  Created by Ravi Seta on 09/02/24.
//

import Foundation
let baseURL = "https://jetdevs.wiremockapi.cloud/"

enum APIEndPoint {
    
    case login
    
    var path: String {
        switch self {
        case .login:
            return baseURL + "login"
        }
    }
    
    var httpMethod: String {
        switch self {
        case .login:
            return "POST"
        }
    }
}
