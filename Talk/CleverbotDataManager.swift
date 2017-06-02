//
//  CleverbotDataManager.swift
//  Talk
//
//  Created by Fellipe Calleia on 02/06/17.
//  Copyright © 2017 Calleia. All rights reserved.
//

import Foundation

class CleverbotDataManager {

    struct Error {
        static let invalidAccessErrorCode = 100
    }
    
    struct CleverbotAPI {
        static let APIKey = "CC2f8wtIy78O_EaTlgXjSuVc7KA"
        static let baseURL = "http://www.cleverbot.com/getreply?"
    }
    
    func fetchMessages(closure: @escaping (String?) -> Void) {
        let url = URL(string: "http://calleia.com.br")!

        // make the request
        let task = URLSession.shared.dataTask(with: url) {
            (data, response, error) in
            
            // check for any errors
            guard error == nil else {
                print("fatal: request error")
                return
            }

            do {
                let json = try JSONSerialization.jsonObject(with: data!, options: [])
            } catch let error as Error {
                print("fatal: cannot parse json")
                return
            }
        }
        
        task.resume()
    }
}
