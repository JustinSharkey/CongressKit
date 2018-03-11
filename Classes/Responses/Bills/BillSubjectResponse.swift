//
//  BillSubjectResponse.swift
//  Congress
//
//  Created by Justin Sharkey on 3/9/18.
//  Copyright © 2018 Justin Sharkey. All rights reserved.
//

import Foundation

public struct BillSubjectResponse: Codable {
    let copyright: String
    let results: [Result]
    let status: String
    
    public struct Result: Codable {
        let numResults: Int
        let offset: Int
        let query: String
        let subjects: [Subject]
        
        private enum CodingKeys: String, CodingKey {
            case numResults = "num_results"
            case offset
            case query
            case subjects
        }
        
        public struct Subject: Codable {
            let name: String
            let urlName: String
            
            private enum CodingKeys: String, CodingKey {
                case name
                case urlName = "url_name"
            }
        }
    }
}

