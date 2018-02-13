//
//  ViewController.swift
//  Auto Layout Practice
//
//  Created by Angela Yu on 01/12/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var valueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func numberPressed(_ sender: UIButton) {
        valueLabel.text! += String(sender.tag)
    }
    
    @IBAction func clearPressed() {
        valueLabel.text = "0"
    }
    
}

