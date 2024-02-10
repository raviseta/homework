//
//  APIManager.swift
//  JetDevsHomeWork
//
//  Created by Ravi Seta on 09/02/24.
//

import Foundation
import RxSwift

class APIManager {
    
    // Generic function for API call
    
    func request<T: Decodable>(endPoint: APIEndPoint, requestParameter: Encodable?) -> Observable<T> {
        
        return Observable<T>.create { observer in
            let request = self.prepareURLRequest(endPoint: endPoint, requestParameter: requestParameter)
            let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
                do {
                    
                    if let urlResponse = response as? HTTPURLResponse {
                        let headers = urlResponse.allHeaderFields
                        if let XAccToken = headers["X-Acc"] as? String {
                            accessToken = XAccToken
                        }
                    }
                    
                    let response = try JSONDecoder().decode(T.self, from: data ?? Data())
                    observer.onNext(response)
                    
                } catch let error {
                    observer.onError(error)
                }
                observer.onCompleted()
            }
            task.resume()
            
            return Disposables.create {
                task.cancel()
            }
        }
    }
    
    // Request will be prepare here.
    private func prepareURLRequest(endPoint: APIEndPoint, requestParameter: Encodable?) -> URLRequest {
        
        guard let url: URL = URL(string: endPoint.path) else { fatalError("INVALID URL") }
        
        var request = URLRequest(url: url)
        request.httpMethod = endPoint.httpMethod
        request.httpBody = try? requestParameter?.toData() ?? (nil)
        return request
    }
}
