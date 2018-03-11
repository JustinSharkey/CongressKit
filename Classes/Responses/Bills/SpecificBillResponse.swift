//
//  SpecificBillResponse.swift
//  Congress
//
//  Created by Justin Sharkey on 3/9/18.
//  Copyright © 2018 Justin Sharkey. All rights reserved.
//

import Foundation

public struct SpecificBillResponse: Codable {
    let copyright: String
    let results: [Result]
    let status: String
    
    public struct Result: Codable {
        let actions: [Action]
        let active: Bool
        let bill: String
        let billId: String
        let billSlug: String
        let billType: String
        let billUri: String
        let committeeCodes: [String]
        let committees: String
        let congress: String
        let congressdotgovUrl: String
        let cosponsors: Int
        let cosponsorsByParty: CosponsorsByParty
        let enacted: String?
        let govtrackUrl: String
        let gpoPdfUri: String?
        let housePassage: String
        let housePassageVote: String
        let introducedDate: String
        let lastVote: String
        let latestMajorAction: String
        let latestMajorActionDate: String
        let number: String
        let primarySubject: String
        let senatePassage: String?
        let senatePassageVote: String?
        let shortTitle: String
        let sponsor: String
        let sponsorId: String
        let sponsorParty: String
        let sponsorState: String
        let sponsorTitle: String
        let sponsorUri: String
        let subcommitteeCodes: [String]
        let summary: String
        let summaryShort: String
        let title: String
        let versions: [String]
        let vetoed: String?
        let votes: [Vote]
        let withdrawnCosponsors: Int
        
        private enum CodingKeys: String, CodingKey {
            case actions
            case active
            case bill
            case billId = "bill_id"
            case billSlug = "bill_slug"
            case billType = "bill_type"
            case billUri = "bill_uri"
            case committeeCodes = "committee_codes"
            case committees
            case congress
            case congressdotgovUrl = "congressdotgov_url"
            case cosponsors
            case cosponsorsByParty = "cosponsors_by_party"
            case enacted
            case govtrackUrl = "govtrack_url"
            case gpoPdfUri = "gpo_pdf_uri"
            case housePassage = "house_passage"
            case housePassageVote = "house_passage_vote"
            case introducedDate = "introduced_date"
            case lastVote = "last_vote"
            case latestMajorAction = "latest_major_action"
            case latestMajorActionDate = "latest_major_action_date"
            case number
            case primarySubject = "primary_subject"
            case senatePassage = "senate_passage"
            case senatePassageVote = "senate_passage_vote"
            case shortTitle = "short_title"
            case sponsor
            case sponsorId = "sponsor_id"
            case sponsorParty = "sponsor_party"
            case sponsorState = "sponsor_state"
            case sponsorTitle = "sponsor_title"
            case sponsorUri = "sponsor_uri"
            case subcommitteeCodes = "subcommittee_codes"
            case summary
            case summaryShort = "summary_short"
            case title
            case versions
            case vetoed
            case votes
            case withdrawnCosponsors = "withdrawn_cosponsors"
        }
        
        public struct Action: Codable {
            let actionType: String
            let chamber: String
            let datetime: String
            let description: String
            let id: Int
            
            private enum CodingKeys: String, CodingKey {
                case actionType = "action_type"
                case chamber
                case datetime
                case description
                case id
            }
        }
        
        public struct CosponsorsByParty: Codable {
            let D: Int
            let R: Int
        }
        
        public struct Vote: Codable {
            let apiUrl: String
            let chamber: String
            let date: String
            let question: String
            let result: String
            let rollCall: String
            let time: String
            let totalNo: Int
            let totalNotVoting: Int
            let totalYes: Int
            
            private enum CodingKeys: String, CodingKey {
                case apiUrl = "api_url"
                case chamber
                case date
                case question
                case result
                case rollCall = "roll_call"
                case time
                case totalNo = "total_no"
                case totalNotVoting = "total_not_voting"
                case totalYes = "total_yes"
            }
        }
    }
}

