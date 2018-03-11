//
//  URLRequestBuilder.swift
//  Congress
//
//  Created by Justin Sharkey on 3/9/18.
//  Copyright © 2018 Justin Sharkey. All rights reserved.
//

import Foundation

final class URLRequestBuilder {
    
    internal static var apiKey: String = ""
    private let baseUrlString: String = "https://api.propublica.org/congress/v1/"
    
    private func createRequest(urlString: String) -> URLRequest {
        var request: URLRequest = URLRequest(url: URL(string: urlString)!)
        request.setValue(URLRequestBuilder.apiKey, forHTTPHeaderField: "X-API-Key")
        return request
    }
}

// MARK: - Bills -

extension URLRequestBuilder {
    
    internal func recentBills(congress: Int, chamber: Chamber, type: String) -> URLRequest {
        return createRequest(urlString: baseUrlString + "\(congress)/\(chamber.rawValue)/bills/\(type).json")
    }
    
    internal func searchBills(query: String) -> URLRequest {
        return createRequest(urlString: baseUrlString + "bills/search.json?query=\(query)")
    }
    
    internal func recentBillsByMember(memberId: String, type: String) -> URLRequest {
        return createRequest(urlString: baseUrlString + "members/\(memberId)/bills/\(type).json")
    }
    
    internal func recentBillsBySubject(subject: String) -> URLRequest {
        return createRequest(urlString: baseUrlString + "bills/subjects/\(subject).json")
    }
    
    internal func upcomingBills(chamber: Chamber) -> URLRequest {
        return createRequest(urlString: baseUrlString + "bills/upcoming/\(chamber.rawValue).json")
    }
    
    internal func specificBill(congress: Int, billId: String) -> URLRequest {
        return createRequest(urlString: baseUrlString + "\(congress)/bills/\(billId).json")
    }
    
    internal func amendmentsForBill(congress: Int, billId: String) -> URLRequest {
        return createRequest(urlString: baseUrlString + "\(congress)/bills/\(billId)/amendments.json")
    }
    
    internal func subjectsForBill(congress: Int, billId: String) -> URLRequest {
        return createRequest(urlString: baseUrlString + "\(congress)/bills/\(billId)/subjects.json")
    }
    
    internal func relatedBillsForBill(congress: Int, billId: String) -> URLRequest {
        return createRequest(urlString: baseUrlString + "\(congress)/bills/\(billId)/related.json")
    }
    
    internal func billSubjects(query: String) -> URLRequest {
        return createRequest(urlString: baseUrlString + "bills/subjects/search.json?query=\(query)")
    }
    
    internal func cosponsorsForBill(congress: Int, billId: String) -> URLRequest {
        return createRequest(urlString: baseUrlString + "\(congress)/bills/\(billId)/cosponsors.json")
    }
}
