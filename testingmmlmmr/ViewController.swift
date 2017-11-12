//
//  ViewController.swift
//  testingmmlmmr
//
//  Created by Denis Baralei on 11/12/17.
//  Copyright © 2017 Denis Baralei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        let train1 = Train()
        print(train1.serialNumber)
        train1.startTrain()
        train1.increaseSpeed(by: 50)
        train1.stopTrain()
    }
}

