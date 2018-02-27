//
//  CharacterDataModel.swift
//  Score
//
//  Created by Roberto Manese III on 2/20/18.
//  Copyright © 2018 maobaoCoder. All rights reserved.
//

import UIKit

class Character {
    var baseTime: Int = 10
}

class Warrior: Character {
    var hp: Float = 25.0
    var maxHp: Float = 25.0
    var str: Int = 6
    var dex: Int = 2
    var agi: Int = 2
    
    func attack() -> Float{
        let dmg = Float(arc4random_uniform(UInt32(self.str)) + 1)
        return dmg
    }
}

class Thief: Character {
    var hp: Float = 20.0
    var maxHp: Float = 20.0
    var str: Int = 3
    var dex: Int = 2
    var agi: Int = 5
    
    func attack() -> Float {
        let dmg = Float(arc4random_uniform(UInt32(self.str)) + 1)
        return dmg
    }
}
