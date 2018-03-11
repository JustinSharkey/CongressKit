//
//  AmendmentsForBillResponse.swift
//  Congress
//
//  Created by Justin Sharkey on 3/9/18.
//  Copyright © 2018 Justin Sharkey. All rights reserved.
//

import Foundation

public struct AmendmentsForBillResponse: Codable {
    public let copyright: String
    public let results: [Result]
    public let status: String
    
    public struct Result: Codable {
        public let amendments: [Amendment]
        public let billId: String
        public let congress: String
        public let numResults: Int
        public let offset: Int
        
        private enum CodingKeys: String, CodingKey {
            case amendments
            case billId = "bill_id"
            case congress
            case numResults = "num_results"
            case offset
        }
        
        public struct Amendment: Codable {
            public let amendmentNumber: String
            public let congressdotgovUrl: String
            public let introducedDate: String
            public let latestMajorAction: String
            public let latestMajorActionDate: String
            public let slug: String
            public let sponsor: String
            public let sponsorId: String
            public let sponsorParty: String
            public let sponsorState: String
            public let sponsorTitle: String
            public let sponsorUri: String
            public let title: String
            
            private enum CodingKeys: String, CodingKey {
                case amendmentNumber = "amendment_number"
                case congressdotgovUrl = "congressdotgov_url"
                case introducedDate = "introduced_date"
                case latestMajorAction = "latest_major_action"
                case latestMajorActionDate = "latest_major_action_date"
                case slug
                case sponsor
                case sponsorId = "sponsor_id"
                case sponsorParty = "sponsor_party"
                case sponsorState = "sponsor_state"
                case sponsorTitle = "sponsor_title"
                case sponsorUri = "sponsor_uri"
                case title
            }
        }
    }
}
