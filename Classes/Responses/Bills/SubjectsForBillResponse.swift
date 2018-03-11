//
//  SubjectsForBillResponse.swift
//  Congress
//
//  Created by Justin Sharkey on 3/9/18.
//  Copyright © 2018 Justin Sharkey. All rights reserved.
//

import Foundation

public struct SubjectsForBillResponse: Codable {
    let copyright: String
    let results: [Result]
    let status: String
    
    public struct Result: Codable {
        let billId: String
        let billSlug: String
        let billType: String
        let billUri: String
        let committees: String
        let congress: String
        let housePassageVote: String
        let introducedDate: String
        let latestMajorAction: String
        let latestMajorActionDate: String
        let number: String
        let numberOfCosponsors: Int
        let senatePassageVote: String?
        let sponsorId: String
        let sponsorName: String
        let sponsorParty: String
        let sponsorState: String
        let sponsorTitle: String
        let sponsorUri: String
        let subjects: [Subject]
        let title: String
        let urlNumber: String
        
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
            let name: String
            let urlName: String
            
            private enum CodingKeys: String, CodingKey {
                case name
                case urlName = "url_name"
            }
        }
    }
}

