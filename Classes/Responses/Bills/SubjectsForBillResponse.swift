//
//  SubjectsForBillResponse.swift
//  Congress
//
//  Created by Justin Sharkey on 3/9/18.
//  Copyright © 2018 Justin Sharkey. All rights reserved.
//

import Foundation

public struct SubjectsForBillResponse: Codable {
    public let copyright: String
    public let results: [Result]
    public let status: String
    
    public struct Result: Codable {
        public let billId: String
        public let billSlug: String
        public let billType: String
        public let billUri: String
        public let committees: String
        public let congress: String
        public let housePassageVote: String
        public let introducedDate: String
        public let latestMajorAction: String
        public let latestMajorActionDate: String
        public let number: String
        public let numberOfCosponsors: Int
        public let senatePassageVote: String?
        public let sponsorId: String
        public let sponsorName: String
        public let sponsorParty: String
        public let sponsorState: String
        public let sponsorTitle: String
        public let sponsorUri: String
        public let subjects: [Subject]
        public let title: String
        public let urlNumber: String
        
        private enum CodingKeys: String, CodingKey {
            case billId = "bill_id"
            case billSlug = "bill_slug"
            case billType = "bill_type"
            case billUri = "bill_uri"
            case committees
            case congress
            case housePassageVote = "house_passage_vote"
            case introducedDate = "introduced_date"
            case latestMajorAction = "latest_major_action"
            case latestMajorActionDate = "latest_major_action_date"
            case number
            case numberOfCosponsors = "number_of_cosponsors"
            case senatePassageVote = "senate_passage_vote"
            case sponsorId = "sponsor_id"
            case sponsorName = "sponsor_name"
            case sponsorParty = "sponsor_party"
            case sponsorState = "sponsor_state"
            case sponsorTitle = "sponsor_title"
            case sponsorUri = "sponsor_uri"
            case subjects
            case title
            case urlNumber = "url_number"
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

