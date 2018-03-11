//
//  UpcomingBillsResponse.swift
//  Congress
//
//  Created by Justin Sharkey on 3/9/18.
//  Copyright © 2018 Justin Sharkey. All rights reserved.
//

import Foundation

public struct UpcomingBillsResponse: Codable {
    public let copyright: String
    public let results: [Result]
    public let status: String
    
    public struct Result: Codable {
        public let bills: [Bill]?
        public let date: String
        
        public struct Bill: Codable {
            public let apiUri: String
            public let billId: String
            public let billNumber: String
            public let billSlug: String
            public let billType: String
            public let billUrl: String
            public let chamber: String
            public let congress: String
            public let consideration: String
            public let context: String?
            public let description: String
            public let legislativeDay: String
            public let range: String
            public let scheduledAt: String
            public let sourceType: String
            public let url: String

            private enum CodingKeys: String, CodingKey {
                case apiUri = "api_uri"
                case billId = "bill_id"
                case billNumber = "bill_number"
                case billSlug = "bill_slug"
                case billType = "bill_type"
                case billUrl = "bill_url"
                case chamber
                case congress
                case consideration
                case context
                case description
                case legislativeDay = "legislative_day"
                case range
                case scheduledAt = "scheduled_at"
                case sourceType = "source_type"
                case url
            }
        }
    }
}

