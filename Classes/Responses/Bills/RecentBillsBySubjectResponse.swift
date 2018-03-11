//
//  RecentBillsByMemberResponse.swift
//  Congress
//
//  Created by Justin Sharkey on 3/9/18.
//  Copyright © 2018 Justin Sharkey. All rights reserved.
//

import Foundation

public struct RecentBillsBySubjectResponse: Codable {
    let copyright: String
    let numResults: Int
    let offset: Int
    let results: [Result]
    let subject: String
    
    private enum CodingKeys: String, CodingKey {
        case copyright
        case numResults = "num_results"
        case offset
        case results
        case subject
    }
    
    public struct Result: Codable {
        let active: Bool
        let billId: String
        let billSlug: String
        let billType: String
        let billUri: String
        let committeeCodes: [String]
        let committees: String
        let congressdotgovUrl: String
        let cosponsors: Int
        let cosponsorsByParty: [String: Int]
        let enacted: String?
        let govtrackUrl: String
        let gpoPdfUri: String?
        let housePassage: String?
        let introducedDate: String
        let lastVote: String?
        let latestMajorAction: String
        let latestMajorActionDate: String
        let number: String
        let primarySubject: String
        let senatePassage: String?
        let shortTitle: String
        let sponsorId: String
        let sponsorName: String
        let sponsorParty: String
        let sponsorState: String
        let sponsorTitle: String
        let sponsorUri: String
        let subcommitteeCodes: [String]?
        let summary: String?
        let summaryShort: String?
        let title: String
        let vetoed: String?
        
        private enum CodingKeys: String, CodingKey {
            case active
            case billId = "bill_id"
            case billSlug = "bill_slug"
            case billType = "bill_type"
            case billUri = "bill_uri"
            case committeeCodes = "committee_codes"
            case committees
            case congressdotgovUrl = "congressdotgov_url"
            case cosponsors
            case cosponsorsByParty = "cosponsors_by_party"
            case enacted
            case govtrackUrl = "govtrack_url"
            case gpoPdfUri = "gpo_pdf_uri"
            case housePassage = "house_passage"
            case introducedDate = "introduced_date"
            case lastVote = "last_vote"
            case latestMajorAction = "latest_major_action"
            case latestMajorActionDate = "latest_major_action_date"
            case number
            case primarySubject = "primary_subject"
            case senatePassage = "senate_passage"
            case shortTitle = "short_title"
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

