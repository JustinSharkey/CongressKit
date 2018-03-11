//
//  SpecificBillResponse.swift
//  Congress
//
//  Created by Justin Sharkey on 3/9/18.
//  Copyright © 2018 Justin Sharkey. All rights reserved.
//

import Foundation

public struct SpecificBillResponse: Codable {
    public let copyright: String
    public let results: [Result]
    public let status: String
    
    public struct Result: Codable {
        public let actions: [Action]
        public let active: Bool
        public let bill: String
        public let billId: String
        public let billSlug: String
        public let billType: String
        public let billUri: String
        public let committeeCodes: [String]
        public let committees: String
        public let congress: String
        public let congressdotgovUrl: String
        public let cosponsors: Int
        public let cosponsorsByParty: CosponsorsByParty
        public let enacted: String?
        public let govtrackUrl: String
        public let gpoPdfUri: String?
        public let housePassage: String
        public let housePassageVote: String
        public let introducedDate: String
        public let lastVote: String
        public let latestMajorAction: String
        public let latestMajorActionDate: String
        public let number: String
        public let primarySubject: String
        public let senatePassage: String?
        public let senatePassageVote: String?
        public let shortTitle: String
        public let sponsor: String
        public let sponsorId: String
        public let sponsorParty: String
        public let sponsorState: String
        public let sponsorTitle: String
        public let sponsorUri: String
        public let subcommitteeCodes: [String]
        public let summary: String
        public let summaryShort: String
        public let title: String
        public let versions: [String]
        public let vetoed: String?
        public let votes: [Vote]
        public let withdrawnCosponsors: Int
        
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
            public let actionType: String
            public let chamber: String
            public let datetime: String
            public let description: String
            public let id: Int
            
            private enum CodingKeys: String, CodingKey {
                case actionType = "action_type"
                case chamber
                case datetime
                case description
                case id
            }
        }
        
        public struct CosponsorsByParty: Codable {
            public let D: Int
            public let R: Int
        }
        
        public struct Vote: Codable {
            public let apiUrl: String
            public let chamber: String
            public let date: String
            public let question: String
            public let result: String
            public let rollCall: String
            public let time: String
            public let totalNo: Int
            public let totalNotVoting: Int
            public let totalYes: Int
            
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

