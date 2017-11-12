//
//  trainTests.swift
//  testingmmlmmrTests
//
//  Created by Denis Baralei on 11/12/17.
//  Copyright © 2017 Denis Baralei. All rights reserved.
//

import XCTest
@testable import testingmmlmmr

class trainTests: XCTestCase {
    var train: Train!
    override func setUp() {
        super.setUp()
        train = Train()
    }
    
    override func tearDown() {
        train = nil
        super.tearDown()
        
    }
    
    func testTrainDoesntAccelerateWithIgnitionOff() {
        train.increaseSpeed(by: 20)
        XCTAssertEqual(train.currentSpeed, 0)
    }
    func testTrainDoesntAccelerateAfterMaxSpeed() {
        train.startTrain()
        let maxspeed = train.maxSpeed
        train.increaseSpeed(by: maxspeed + 10)
        XCTAssertEqual(train.currentSpeed, maxspeed)
    }
    func  testTrainCanMakeBeep() {
        XCTAssertEqual(train.makeBeep(), "TUU-TUU", "yeas he can beep")
    }
    func testTrainDoesntGetMinusSpeed() {
        train.startTrain()
        let speed = train.maxSpeed + 1
        train.decreaseSpeed(by:speed)
        XCTAssertEqual(train.currentSpeed, 0)
    }
    func testStartStopTrain() {
        train.startTrain()
        XCTAssertEqual(train.isOn, true)
        train.stopTrain()
        XCTAssertEqual(train.isOn, false)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
