//
//  UserDefaults.swift
//  JetDevsHomeWork
//
//  Created by Ravi Seta on 10/02/24.
//

import Foundation

func saveUserData(userData: LoginResponse) {
    let encoder = JSONEncoder()
    if let encoded = try? encoder.encode(userData) {
        let defaults = UserDefaults.standard
        defaults.set(encoded, forKey: "userdata")
    }
}

func getUserData() -> LoginResponse? {
    let defaults = UserDefaults.standard
    if let user = defaults.object(forKey: "userdata") as? Data {
        let decoder = JSONDecoder()
        if let loginUser = try? decoder.decode(LoginResponse.self, from: user) {
            return loginUser
        }
    }
    return nil
}
var accessToken: String {
    get {
        return userDefault.string(forKey: "access_token") ?? ("")
    }
    set (newValue) {
        userDefault.set(newValue, forKey: "access_token")
    }
}
