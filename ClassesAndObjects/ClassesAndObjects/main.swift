//
//  main.swift
//  ClassesAndObjects
//
//  Created by Roberto Manese III on 2/9/18.
//  Copyright © 2018 maobaoCoder. All rights reserved.
//

import Foundation

let myCar = Car()
let convCar = Car(customerChosenColor: .Gold)
let smartCar = SelfDrivingCar()

print(myCar.color)
print(myCar.numberOfSeats)
print(myCar.typeOfCar)
myCar.drive()

print()
print("=====")
print()

print(convCar.color)
print(convCar.numberOfSeats)
print(convCar.typeOfCar)

print()
print("=====")
print()

print(smartCar.color)
print(smartCar.numberOfSeats)
print(smartCar.typeOfCar)
//smartCar.destination = "1 Hacker Way"
smartCar.drive()

