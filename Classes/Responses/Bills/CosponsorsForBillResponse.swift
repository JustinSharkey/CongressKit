//
//  CosponsorsForBill.swift
//  Congress
//
//  Created by Justin Sharkey on 3/9/18.
//  Copyright © 2018 Justin Sharkey. All rights reserved.
//

import Foundation

public struct CosponsorsForBillResponse: Codable {
    let copyright: String
    let results: [Result]
    let status: String
    
    public struct Result: Codable {
        let bill: String
        let committees: String
        let congress: String
        let cosponsors: [Cosponsor]
        let cosponsorsByParty: [CosponsorsByParty]
        let housePassageVote: String?
        let introducedDate: String
        let latestMajorAction: String
        let latestMajorActionDate: String
        let numberOfCosponsors: Int
        let senatePassageVote: String?
        let sponsorId: String
        let sponsorName: String
        let sponsorParty: String
        let sponsorState: String
        let sponsorTitle: String
        let sponsorUri: String
        let title: String
        let urlNumber: String
        
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
            let cosponsorId: String
            let cosponsorParty: String
            let cosponsorState: String
            let cosponsorTitle: String
            let cosponsorUri: String
            let date: String
            let name: String
            
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
            let party: Party
            
            public struct Party: Codable {
                let id: String
                let sponsors: String
            }
        }
                

    }
}
