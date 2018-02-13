//
//  ViewController.swift
//  DiceeApp
//
//  Created by Roberto Manese III on 2/11/18.
//  Copyright © 2018 maobaoCoder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0

    @IBOutlet weak var diceImageOne: UIImageView!
    @IBOutlet weak var diceImageTwo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImages()
    }
    
    @IBAction func rollButtonPressed() {
        updateDiceImages()
    }
    
    func updateDiceImages(){
        randomDiceIndex1 = Int(arc4random_uniform(6)) + 1
        randomDiceIndex2 = Int(arc4random_uniform(6)) + 1
        diceImageOne.image = UIImage(named: "dice\(randomDiceIndex1)")
        diceImageTwo.image = UIImage(named: "dice\(randomDiceIndex2)")
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}

