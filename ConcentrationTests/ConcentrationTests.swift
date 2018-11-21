//
//  ConcentrationTests.swift
//  ConcentrationTests
//
//  Created by Aji Saputra Raka Siwi on 14/11/18.
//  Copyright © 2018 Aji Saputra Raka Siwi. All rights reserved.
//

import XCTest
@testable import Concentration

class ConcentrationTests: XCTestCase {
    
    let n = 15
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func additionOne(a:Int, b:Int) -> Int{
        return a + b
    }
    
    func additionTwo(a:Int, b:Int) -> Int{
        let numberOne = a
        let numberTwo = b
        
        let c = numberOne
        let d = numberTwo
        
        let e = c
        let f = d
        
        let g = e
        let h = f
        
        let i = g
        let j = h
        
        let z = i + j
        return z
    }
    
    func add10Array() -> Int{
        var a = [Int]()
        for i in 1...10 {
            a.append(i)
        }
        return a.count
    }
    
    func add2000000Array() -> Int{
        var a = [Int]()
        for i in 1...2000000 {
            a.append(i)
        }
        return a.count
    }
    
    func testPerformanceExampleOne() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            XCTAssertEqual(additionOne(a: 10, b: 5), n)
        }
    }
    
    func testPerformanceExampleTwo() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            XCTAssertEqual(additionTwo(a: 10, b: 5), n)
        }
    }
    
    func testPerformanceExampleArrayOne() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            XCTAssertEqual(add10Array(), 10)
        }
    }
    
    func testPerformanceExampleArrayTwo() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            XCTAssertEqual(add2000000Array(), 2000000)
        }
    }
    
}
