//
//  CleverbotChatModel.swift
//  Talk
//
//  Created by Fellipe Calleia on 02/06/17.
//  Copyright © 2017 Calleia. All rights reserved.
//

import Foundation

struct CleverbotChatModel {
    let baseURL: String
    let key: String
    let input: String

    var cs: String {
        get {
            guard self.cs.isEmpty else {
                return "&cs=\(self.cs)"
            }
            
            return self.cs
        }
    }

    var callback: String {
        get {
            guard self.callback.isEmpty else {
                return "&callback=\(self.callback)"
            }
            
            return self.callback
        }
    }

    func getURL() -> URL {
        let urlString = "\(self.baseURL)\(self.key)\(self.input)\(self.cs)\(self.callback)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)

        return URL(string: urlString)!
    }
}
