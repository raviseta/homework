//
//  LoginResponse.swift
//  JetDevsHomeWork
//
//  Created by Ravi Seta on 10/02/24.
//

import Foundation

// MARK: - LoginResponse
struct LoginResponse: Codable {
    
    let result: Int
    let errorMessage: String
    let data: User

    enum CodingKeys: String, CodingKey {
        case result
        case errorMessage = "error_message"
        case data
    }
}

// MARK: - UserData
struct User: Codable {
    
    let user: UserMeta
}

// MARK: - User
struct UserMeta: Codable {
    
    let userID: Int
    let userName: String
    let userProfileURL: String
    let createdAt: String

    enum CodingKeys: String, CodingKey {
        case userID = "user_id"
        case userName = "user_name"
        case userProfileURL = "user_profile_url"
        case createdAt = "created_at"
    }
}
