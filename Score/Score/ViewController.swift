//
//  ViewController.swift
//  Score
//
//  Created by Roberto Manese III on 2/20/18.
//  Copyright © 2018 maobaoCoder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var p1HealthBar: UIProgressView!
    @IBOutlet weak var p1MinHp: UILabel!
    @IBOutlet weak var p1MaxHp: UILabel!
    
    @IBOutlet weak var p2HealthBar: UIProgressView!
    @IBOutlet weak var p2MinHp: UILabel!
    @IBOutlet weak var p2MaxHp: UILabel!
    
    @IBOutlet weak var battleInfo: UILabel!
    
    var warrior = Warrior()
    var thief = Thief()
    
    var gameTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialSetup()
    }
    
    func initialSetup() {
        p1HealthBar.transform = p1HealthBar.transform.scaledBy(x: 1, y: 20)
        p2HealthBar.transform = p2HealthBar.transform.scaledBy(x: 1, y: 20)
        
        p1MinHp.text = String(warrior.hp)
        p1MaxHp.text = String(warrior.maxHp)
        
        p2MinHp.text = String(thief.hp)
        p2MaxHp.text = String(thief.maxHp)
    }
    
    func warriorCombat() {
        var tempHp = warrior.hp
        warrior.hp -= thief.attack()
        tempHp = tempHp - warrior.hp
        print("Thief did \(tempHp)")
        print("HP: \(warrior.hp) / \(warrior.maxHp)")
    }
    
    func thiefCombat() {
        var tempHp = thief.hp
        thief.hp -= thief.attack()
        tempHp = tempHp - thief.hp
        print("Warrior did \(tempHp)")
        print("HP: \(thief.hp) / \(thief.maxHp)")
    }
    
    @IBAction func fight() {
        while warrior.hp > 0 && thief.hp > 0 {
            thiefCombat()
            warriorCombat()
            if warrior.hp <= 0 {
                print("Thief wins")
            }
            if thief.hp <= 0 {
                print("Warrior wins")
            }
        }
    }
    
    
    
}

