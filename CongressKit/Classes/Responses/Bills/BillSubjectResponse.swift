//
//  BillSubjectResponse.swift
//  Congress
//
//  Created by Justin Sharkey on 3/9/18.
//  Copyright © 2018 Justin Sharkey. All rights reserved.
//

import Foundation

public struct BillSubjectResponse: Codable {
    public let copyright: String
    public let results: [Result]
    public let status: String
    
    public struct Result: Codable {
        public let numResults: Int
        public let offset: Int
        public let query: String
        public let subjects: [Subject]
        
        private enum CodingKeys: String, CodingKey {
            case numResults = "num_results"
            case offset
            case query
            case subjects
        }
        
        public struct Subject: Codable {
            public let name: String
            public let urlName: String
            
            private enum CodingKeys: String, CodingKey {
                case name
                case urlName = "url_name"
            }
        }
    }
}

