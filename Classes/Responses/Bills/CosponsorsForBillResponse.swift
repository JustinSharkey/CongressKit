//
//  CosponsorsForBill.swift
//  Congress
//
//  Created by Justin Sharkey on 3/9/18.
//  Copyright © 2018 Justin Sharkey. All rights reserved.
//

import Foundation

public struct CosponsorsForBillResponse: Codable {
    public let copyright: String
    public let results: [Result]
    public let status: String
    
    public struct Result: Codable {
        public let bill: String
        public let committees: String
        public let congress: String
        public let cosponsors: [Cosponsor]
        public let cosponsorsByParty: [CosponsorsByParty]
        public let housePassageVote: String?
        public let introducedDate: String
        public let latestMajorAction: String
        public let latestMajorActionDate: String
        public let numberOfCosponsors: Int
        public let senatePassageVote: String?
        public let sponsorId: String
        public let sponsorName: String
        public let sponsorParty: String
        public let sponsorState: String
        public let sponsorTitle: String
        public let sponsorUri: String
        public let title: String
        public let urlNumber: String
        
        private enum CodingKeys: String, CodingKey {
            case bill
            case committees
            case congress
            case cosponsors
            case cosponsorsByParty = "cosponsors_by_party"
            case housePassageVote = "house_passage_vote"
            case introducedDate = "introduced_date"
            case latestMajorAction = "latest_major_action"
            case latestMajorActionDate = "latest_major_action_date"
            case numberOfCosponsors = "number_of_cosponsors"
            case senatePassageVote = "senate_passage_vote"
            case sponsorId = "sponsor_id"
            case sponsorName = "sponsor_name"
            case sponsorParty = "sponsor_party"
            case sponsorState = "sponsor_state"
            case sponsorTitle = "sponsor_title"
            case sponsorUri = "sponsor_uri"
            case title
            case urlNumber = "url_number"
        }
        
        public struct Cosponsor: Codable {
            public let cosponsorId: String
            public let cosponsorParty: String
            public let cosponsorState: String
            public let cosponsorTitle: String
            public let cosponsorUri: String
            public let date: String
            public let name: String
            
            private enum CodingKeys: String, CodingKey {
                case cosponsorId = "cosponsor_id"
                case cosponsorParty = "cosponsor_party"
                case cosponsorState = "cosponsor_state"
                case cosponsorTitle = "cosponsor_title"
                case cosponsorUri = "cosponsor_uri"
                case date
                case name
            }
        }
        public struct CosponsorsByParty: Codable {
            public let party: Party
            
            public struct Party: Codable {
                public let id: String
                public let sponsors: String
            }
        }
                

    }
}
