//
//  SelfDrivingCar.swift
//  ClassesAndObjects
//
//  Created by Roberto Manese III on 2/10/18.
//  Copyright © 2018 maobaoCoder. All rights reserved.
//

import Foundation

class SelfDrivingCar: Car {
    
    var destination: String?
    
    override func drive() {
        super.drive()
        
        if let userSetDestination = destination {
            print("driving towards \(userSetDestination)")
        }
    }
}
