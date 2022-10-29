//
//  APIFetch.swift
//  VMDirectory
//
//  Created by Sathish on 29/10/22.
//

import Foundation

typealias onSuccuss = (Data) -> Void
typealias onError = (String) -> Void
class APIFetch {
    static let share = APIFetch()
    
    let session = URLSession(configuration: .default)
    
    func fetchData(url: String, onSuccess: @escaping onSuccuss, onError: @escaping onError){
        let baseURL = URL(string: url)!
        let task = session.dataTask(with: baseURL) { data, response, error in
            DispatchQueue.main.async {
                // handle session error
                if let error = error{
                    print(error.localizedDescription)
                    return
                }
                
                // To ensure there is data and a server response
                guard let data = data, let response = response as? HTTPURLResponse else {
                    print("Invalid data or response")
                    return
                }
                // handle server response codes
                do{
                    switch response.statusCode{
                    case 200:
                        onSuccess(data)
                        print(data)
                    default:
                        // handle unsuccessful error (400s)
                        print("Error 400")
                        onError(error!.localizedDescription)
                    }
                }
            }
        }
        task.resume()
    }
}
