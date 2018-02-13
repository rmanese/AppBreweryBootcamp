//
//  Car.swift
//  ClassesAndObjects
//
//  Created by Roberto Manese III on 2/9/18.
//  Copyright © 2018 maobaoCoder. All rights reserved.
//

import Foundation

enum CarType {
    case Sedan
    case Coupe
    case Hatchback
}

enum CarColor {
    case Red
    case Blue
    case White
    case Grey
    case Black
    case Green
    case Gold
}

class Car {
    var color : CarColor = .Black
    let numberOfSeats : Int = 5
    var typeOfCar : CarType = .Coupe
    
    init(){
        
    }
    
    convenience init(customerChosenColor: CarColor) {
        self.init()
        color = customerChosenColor
    }
    
    func drive() {
        print("Car is moving")
    }
    
}
