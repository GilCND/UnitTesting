//
//  Tests.swift
//  Tests
//
//  Created by Felipe Gil on 2021-10-05.
//

import XCTest
@testable import UnitTesting

class Tests: XCTestCase {
    
    func testDecimalToStringWholeNumber(){
        XCTAssertEqual(Decimal(string: "0.0")?.toString, "0.00")
        XCTAssertEqual(Decimal(string: "1.0")?.toString, "1.00")
        XCTAssertEqual(Decimal(string: "2.0")?.toString, "2.00")
        XCTAssertEqual(Decimal(string: "-10.0")?.toString, "-10.00")
    }
    
    func testDecimalToStringWithOneDecimalPlace(){
        XCTAssertEqual(Decimal(string: "2.2")?.toString, "2.20")
        XCTAssertEqual(Decimal(string: "5.8")?.toString, "5.80")
        XCTAssertEqual(Decimal(string: "-2.1")?.toString, "-2.10")
    }
    
    func testDecimalToStringWithTwoDecimalPlace(){
        XCTAssertEqual(Decimal(string: "2.22")?.toString, "2.22")
        XCTAssertEqual(Decimal(string: "9.72")?.toString, "9.72")
        XCTAssertEqual(Decimal(string: "-15.12")?.toString, "-15.12")
    }
    
    func testDecimalToStringWithAnyDecimalPplaces(){
        XCTAssertEqual(Decimal(string: "15.111452")?.toString, "15.11")
        XCTAssertEqual(Decimal(string: "5.125")?.toString, "5.12")
        XCTAssertEqual(Decimal(string: "4.1206")?.toString, "4.12")
    }
     
}
