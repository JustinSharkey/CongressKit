//
//  SearchBillsResponse.swift
//  Congress
//
//  Created by Justin Sharkey on 3/9/18.
//  Copyright © 2018 Justin Sharkey. All rights reserved.
//

import Foundation

public struct SearchBillsResponse: Codable {
    public let copyright: String
    public let results: [Result]
    public let status: String
    
    public struct Result: Codable {
        public let bills: [Bill]
        public let numResults: Int
        public let offset: Int
        
        private enum CodingKeys: String, CodingKey {
            case bills
            case numResults = "num_results"
            case offset
        }
        
        public struct Bill: Codable {
            public let active: Bool
            public let billId: String
            public let billType: String
            public let billUri: String
            public let committeeCodes: [String]
            public let committees: String
            public let congressdotgovUrl: String
            public let cosponsors: Int
            public let enacted: String?
            public let govtrackUrl: String
            public let gpoPdfUri: String?
            public let housePassage: String?
            public let introducedDate: String
            public let latestMajorAction: String
            public let latestMajorActionDate: String
            public let number: String
            public let primarySubject: String
            public let senatePassage: String?
            public let sponsorId: String
            public let sponsorName: String
            public let sponsorParty: String
            public let sponsorState: String
            public let sponsorTitle: String
            public let sponsorUri: String
            public let subcommitteeCodes: [String]?
            public let summary: String
            public let summaryShort: String
            public let title: String
            public let vetoed: String?
            
            private enum CodingKeys: String, CodingKey {
                case active
                case billId = "bill_id"
                case billType = "bill_type"
                case billUri = "bill_uri"
                case committeeCodes = "committee_codes"
                case committees
                case congressdotgovUrl = "congressdotgov_url"
                case cosponsors
                case enacted
                case govtrackUrl = "govtrack_url"
                case gpoPdfUri = "gpo_pdf_uri"
                case housePassage = "house_passage"
                case introducedDate = "introduced_date"
                case latestMajorAction = "latest_major_action"
                case latestMajorActionDate = "latest_major_action_date"
                case number
                case primarySubject = "primary_subject"
                case senatePassage = "senate_passage"
                case sponsorId = "sponsor_id"
                case sponsorName = "sponsor_name"
                case sponsorParty = "sponsor_party"
                case sponsorState = "sponsor_state"
                case sponsorTitle = "sponsor_title"
                case sponsorUri = "sponsor_uri"
                case subcommitteeCodes = "subcommittee_codes"
                case summary
                case summaryShort = "summary_short"
                case title
                case vetoed
            }
        }
    }
}
