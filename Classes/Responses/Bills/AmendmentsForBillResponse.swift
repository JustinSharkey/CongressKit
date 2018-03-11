//
//  AmendmentsForBillResponse.swift
//  Congress
//
//  Created by Justin Sharkey on 3/9/18.
//  Copyright © 2018 Justin Sharkey. All rights reserved.
//

import Foundation

public struct AmendmentsForBillResponse: Codable {
    let copyright: String
    let results: [Result]
    let status: String
    
    public struct Result: Codable {
        let amendments: [Amendment]
        let billId: String
        let congress: String
        let numResults: Int
        let offset: Int
        
        private enum CodingKeys: String, CodingKey {
            case amendments
            case billId = "bill_id"
            case congress
            case numResults = "num_results"
            case offset
        }
        
        public struct Amendment: Codable {
            let amendmentNumber: String
            let congressdotgovUrl: String
            let introducedDate: String
            let latestMajorAction: String
            let latestMajorActionDate: String
            let slug: String
            let sponsor: String
            let sponsorId: String
            let sponsorParty: String
            let sponsorState: String
            let sponsorTitle: String
            let sponsorUri: String
            let title: String
            
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
