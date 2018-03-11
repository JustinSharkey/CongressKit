//
//  CongressKitTests.swift
//  CongressKitTests
//
//  Created by Justin Sharkey on 3/10/18.
//  Copyright © 2018 Justin Sharkey. All rights reserved.
//

import XCTest
@testable import CongressKit

class CongressKitTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        CongressKit.shared.setup(apiKey: Constants.apiKey)
    }
    
    func testSearchBills() {
        let expectation: XCTestExpectation = XCTestExpectation(description: "Search Bills")
        CongressKit.shared.searchBills(query: "gun") { response in
            XCTAssert(response.successful())
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 10)
    }
    
    func testRecentBillsBySenate() {
        let expectation: XCTestExpectation = XCTestExpectation(description: "Recent Bills by Senate")
        CongressKit.shared.recentBills(congress: Constants.congress, chamber: .senate, type: BillStatus.updated) { response in
            XCTAssert(response.successful())
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 10)
    }
    
    func testRecentBillsByHouse() {
        let expectation: XCTestExpectation = XCTestExpectation(description: "Recent Bills by House")
        CongressKit.shared.recentBills(congress: Constants.congress, chamber: .house, type: BillStatus.updated) { response in
            XCTAssert(response.successful())
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 10)
    }
    
    func testRecentBillsByMember() {
        let expectation: XCTestExpectation = XCTestExpectation(description: "Recent Bills by Member")
        CongressKit.shared.recentBillsByMember(memberId: "L000287", type: .updated) { response in
            XCTAssert(response.successful())
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 10)
    }
    
    func testRecentBillsBySubject() {
        let expectation: XCTestExpectation = XCTestExpectation(description: "Recent Bills by Subject")
        CongressKit.shared.recentBillsBySubject(subject: "meat") { response in
            XCTAssert(response.successful())
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 10)
    }
    
    func testUpcomingBillsBySenate() {
        let expectation: XCTestExpectation = XCTestExpectation(description: "Recent Bills by Subject")
        CongressKit.shared.upcomingBills(chamber: .senate) { response in
            XCTAssert(response.successful())
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 10)
    }
    
    func testUpcomingBillsByHouse() {
        let expectation: XCTestExpectation = XCTestExpectation(description: "Recent Bills by Subject")
        CongressKit.shared.upcomingBills(chamber: .house) { response in
            XCTAssert(response.successful())
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 10)
    }
    
    func testSpecificBill() {
        let expectation: XCTestExpectation = XCTestExpectation(description: "Specific Bill")
        CongressKit.shared.specificBill(congress: Constants.congress, billId: "hr21") { response in
            XCTAssert(response.successful())
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 10)
    }
    
    func testAmendmentsForBill() {
        let expectation: XCTestExpectation = XCTestExpectation(description: "Amendments for Bill")
        CongressKit.shared.amendmentsForBill(congress: Constants.congress, billId: "hr4881") { response in
            XCTAssert(response.successful())
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 10)
    }
    
    func testSubjectsForBill() {
        let expectation: XCTestExpectation = XCTestExpectation(description: "Subjects for Bill")
        CongressKit.shared.subjectsForBill(congress: Constants.congress, billId: "hr4881") { response in
            XCTAssert(response.successful())
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 10)
    }
    
    func testRelatedBillForBill() {
        let expectation: XCTestExpectation = XCTestExpectation(description: "Related Bills for Bills")
        CongressKit.shared.relatedBillsForBill(congress: Constants.congress, billId: "hr4881") { response in
            XCTAssert(response.successful())
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 10)
    }
    
    func testBillSubject() {
        let expectation: XCTestExpectation = XCTestExpectation(description: "Bill Subject")
        CongressKit.shared.billSubject(query: "climate") { response in
            XCTAssert(response.successful())
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 10)
    }
    
    func testCosponsorsForBill() {
        let expectation: XCTestExpectation = XCTestExpectation(description: "Cosponsors for Bill")
        CongressKit.shared.cosponsorsForBill(congress: Constants.congress, billId: "hr4881") { response in
            XCTAssert(response.successful())
            expectation.fulfill()
        }
        wait(for: [expectation], timeout: 10)
    }
}
