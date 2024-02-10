//
//  Encodable+Extension.swift
//  JetDevsHomeWork
//
//  Created by Ravi Seta on 10/02/24.
//

import Foundation

extension Encodable {
    
    func toData() throws -> Data {
        return try JSONEncoder().encode(self)
    }
    
    func asDictionary() throws -> [String: Any] {
        let data = try JSONEncoder().encode(self)
        guard let dictionary = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any] else {
            throw NSError()
        }
        return dictionary
    }
}
