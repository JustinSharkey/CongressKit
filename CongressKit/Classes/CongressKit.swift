//
//  NetworkingKit.swift
//  Congress
//
//  Created by Justin Sharkey on 3/6/18.
//  Copyright © 2018 Justin Sharkey. All rights reserved.
//

import Foundation

final public class CongressKit {
    
    public static let shared: CongressKit = CongressKit()
    
    private let session: URLSession = URLSession(configuration: URLSessionConfiguration.default)
    
    public func setup(apiKey: String) {
        URLRequestBuilder.apiKey = apiKey
    }
    
    private func sendRequest<T: Codable>(type: T.Type, request: URLRequest, completion: @escaping (Response<T>) -> Void) {
        let dataTask: URLSessionDataTask = session.dataTask(with: request) { (responseData, response, responseError) in
            if let responseError = responseError {
                completion(.failure(responseError))
                return
            }
            guard let responseData = responseData else {
                completion(.failure(CKError.data))
                return
            }
            do {
                let responseModel: T = try JSONDecoder().decode(T.self, from: responseData)
                completion(.success(responseModel))
            } catch {
                completion(.failure(error))
            }
        }
        dataTask.resume()
    }
}

extension CongressKit {
    
    public func searchBills(query: String, completion: @escaping (Response<SearchBillsResponse>) -> Void) {
        let request: URLRequest = URLRequestBuilder().searchBills(query: query)
        sendRequest(type: SearchBillsResponse.self, request: request, completion: completion)
    }
    
    public func recentBills(congress: Int, chamber: Chamber, type: BillStatus, completion: @escaping (Response<RecentBillsResponse>) -> Void) {
        let request: URLRequest = URLRequestBuilder().recentBills(congress: congress, chamber: chamber, type: type)
        sendRequest(type: RecentBillsResponse.self, request: request, completion: completion)
    }
    
    public func recentBillsByMember(memberId: String, type: BillStatus, completion: @escaping (Response<RecentBillsByMemberResponse>) -> Void) {
        let request: URLRequest = URLRequestBuilder().recentBillsByMember(memberId: memberId, type: type)
        sendRequest(type: RecentBillsByMemberResponse.self, request: request, completion: completion)
    }
    
    public func recentBillsBySubject(subject: String, completion: @escaping (Response<RecentBillsBySubjectResponse>) -> Void) {
        let request: URLRequest = URLRequestBuilder().recentBillsBySubject(subject: subject)
        sendRequest(type: RecentBillsBySubjectResponse.self, request: request, completion: completion)
    }
    
    public func upcomingBills(chamber: Chamber, completion: @escaping (Response<UpcomingBillsResponse>) -> Void) {
        let request: URLRequest = URLRequestBuilder().upcomingBills(chamber: chamber)
        sendRequest(type: UpcomingBillsResponse.self, request: request, completion: completion)
    }
    
    public func specificBill(congress: Int, billId: String, completion: @escaping (Response<SpecificBillResponse>) -> Void) {
        let request: URLRequest = URLRequestBuilder().specificBill(congress: congress, billId: billId)
        sendRequest(type: SpecificBillResponse.self, request: request, completion: completion)
    }
    
    public func amendmentsForBill(congress: Int, billId: String, completion: @escaping (Response<AmendmentsForBillResponse>) -> Void) {
        let request: URLRequest = URLRequestBuilder().amendmentsForBill(congress: congress, billId: billId)
        sendRequest(type: AmendmentsForBillResponse.self, request: request, completion: completion)
    }
    
    public func subjectsForBill(congress: Int, billId: String, completion: @escaping (Response<SubjectsForBillResponse>) -> Void) {
        let request: URLRequest = URLRequestBuilder().subjectsForBill(congress: congress, billId: billId)
        sendRequest(type: SubjectsForBillResponse.self, request: request, completion: completion)
    }
    
    public func relatedBillsForBill(congress: Int, billId: String, completion: @escaping (Response<RelatedBillsForBillResponse>) -> Void) {
        let request: URLRequest = URLRequestBuilder().relatedBillsForBill(congress: congress, billId: billId)
        sendRequest(type: RelatedBillsForBillResponse.self, request: request, completion: completion)
    }
    
    public func billSubject(query: String, completion: @escaping (Response<BillSubjectResponse>) -> Void) {
        let request: URLRequest = URLRequestBuilder().billSubjects(query: query)
        sendRequest(type: BillSubjectResponse.self, request: request, completion: completion)
    }
    
    public func cosponsorsForBill(congress: Int, billId: String, completion: @escaping (Response<CosponsorsForBillResponse>) -> Void) {
        let request: URLRequest = URLRequestBuilder().cosponsorsForBill(congress: congress, billId: billId)
        sendRequest(type: CosponsorsForBillResponse.self, request: request, completion: completion)
    }
}
