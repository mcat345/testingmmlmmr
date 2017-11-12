//
//  Train.swift
//  testingmmlmmr
//
//  Created by Denis Baralei on 11/12/17.
//  Copyright © 2017 Denis Baralei. All rights reserved.
//

import Foundation

class Train {
    // MARK: - Public Properties
    let serialNumber : String
    let maxSpeed = 140
    var currentSpeed: Int {
        return speed
    }
    var availableAcceleration: Int {
        return acceleration
    }
    // MARk: - Private Properties
    private var speed = 0
    private var acceleration = 2
    private var isStart = false
    // MARK: Init
    init() {
        self.serialNumber = UUID().uuidString
    }
    // MARK: - Public
    func makeBeep() {
        print("TUU-TUU")
    }
    func increaseSpeed(by speed: Int ) {
        guard isStart else { return }
        let spd = self.speed + speed
        guard spd < maxSpeed else {
            self.speed = maxSpeed
            return
        }
        self.speed = maxSpeed
        print("Speed inscreased. current speed now: \(self.speed)")
    }
    func decreaseSpeed(by speed: Int) {
        guard isStart else { return }
        let spd = self.speed - speed
        guard spd > 0 else {
            self.speed = 0
            return
        }
        self.speed = spd
        print("Speed decreased. current speed now: \(self.speed)")
    }
    func stopTrain() {
        self.speed = 0
        isStart = false
        print("Train stopped")
    }
    func startTrain() {
        guard !isStart else { return }
        isStart = true
        self.speed = 10
    }
}
