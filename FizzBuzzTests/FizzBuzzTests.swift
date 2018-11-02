//
//  FizzBuzzTests.swift
//  FizzBuzzTests
//
//  Created by Chris Cooksley on 02/11/2018.
//  Copyright © 2018 Chris Cooksley. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class FizzBuzzTests: XCTestCase {
    
    var fizzbuzz = FizzBuzz()

    override func setUp() {
    }

    override func tearDown() {
    }
    
    func testIsDivisibleByThree() {
        let result = fizzbuzz.isDivisibleBy(number: 3, factor: 3)
        XCTAssertTrue(result)
    }
    
    func testIsNotDivisibleByThree() {
        let result = fizzbuzz.isDivisibleBy(number: 1, factor: 3)
        XCTAssertFalse(result)
    }
    
    func testIsDivisibleByFive() {
        let result = fizzbuzz.isDivisibleBy(number: 10, factor: 5)
        XCTAssertTrue(result)
    }
    
    func testFizzesFor6() {
        let result = fizzbuzz.parse(number: 6)
        XCTAssertEqual(result, "fizz")
    }
    
    func testIsNotDivisibleByFive() {
        let result = fizzbuzz.isDivisibleBy(number: 9, factor: 5)
        XCTAssertFalse(result)
    }
    
    func testBuzzesFor10() {
        let result = fizzbuzz.parse(number: 10)
        XCTAssertEqual(result, "buzz")
    }
    
    func testFizzBuzzesFor30() {
        let result = fizzbuzz.parse(number: 30)
        XCTAssertEqual(result, "fizzbuzz")
    }
    
    func testReturnsNumberForAnythingElse() {
        let result = fizzbuzz.parse(number: 17)
        XCTAssertEqual(result, "17")
    }

}
