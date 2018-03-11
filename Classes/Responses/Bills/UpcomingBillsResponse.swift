//
//  UpcomingBillsResponse.swift
//  Congress
//
//  Created by Justin Sharkey on 3/9/18.
//  Copyright © 2018 Justin Sharkey. All rights reserved.
//

import Foundation

public struct UpcomingBillsResponse: Codable {
    let copyright: String
    let results: [Result]
    let status: String
    
    public struct Result: Codable {
        let bills: [Bill]?
        let date: String
        
        public struct Bill: Codable {
            let apiUri: String
            let billId: String
            let billNumber: String
            let billSlug: String
            let billType: String
            let billUrl: String
            let chamber: String
            let congress: String
            let consideration: String
            let context: String?
            let description: String
            let legislativeDay: String
            let range: String
            let scheduledAt: String
            let sourceType: String
            let url: String

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

