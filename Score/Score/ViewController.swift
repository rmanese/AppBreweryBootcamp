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
    
    var warriorTimer = Timer()
    var thiefTimer = Timer()
    
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
    
    @objc func warriorCombat() {
        var tempHp = thief.hp
        thief.hp -= warrior.attack()
        tempHp = tempHp - thief.hp
        animateBar(current: thief.hp, max: thief.maxHp, bar: p2HealthBar)
        battleInfo.text = "Warrior did \(tempHp) damage"
        p2MinHp.text = String(thief.hp)
        p2MaxHp.text = String(thief.maxHp)
        
        if thief.hp < 1 {
            warriorTimer.invalidate()
            thiefTimer.invalidate()
        }
    }
    
    @objc func thiefCombat() {
        var tempHp = warrior.hp
        warrior.hp -= thief.attack()
        tempHp = tempHp - warrior.hp
        animateBar(current: warrior.hp, max: warrior.maxHp, bar: p1HealthBar)
        battleInfo.text = "Thief did \(tempHp) damage"
        p1MinHp.text = String(warrior.hp)
        p1MaxHp.text = String(warrior.maxHp)
        
        if warrior.hp < 1 {
            thiefTimer.invalidate()
            warriorTimer.invalidate()
        }
    }
    
    func animateBar(current: Float, max: Float, bar: UIProgressView!) {
        let newProgress: Float = current / max
        print(newProgress)
        bar.setProgress(newProgress, animated: true)
    }
    
    func thiefAttack() {
        thiefTimer = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(thiefCombat), userInfo: nil, repeats: true)
    }
    
    func warriorAttack() {
        warriorTimer = Timer.scheduledTimer(timeInterval: 7, target: self, selector: #selector(warriorCombat), userInfo: nil, repeats: true)
    }
    
    func enterBattle() {
        thiefAttack()
        warriorAttack()
    }
    
    @IBAction func fight() {
        enterBattle()
    }
    
    
    
}

