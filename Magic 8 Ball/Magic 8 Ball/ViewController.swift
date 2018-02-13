//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Roberto Manese III on 2/11/18.
//  Copyright © 2018 maobaoCoder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var ballViewImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func askButtonTapped(_ sender: UIButton) {
        changeAnswer()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeAnswer()
    }
    
    func changeAnswer() {
        let randomAnswer = Int(arc4random_uniform(5)) + 1
        print(randomAnswer)
        ballViewImage.image = UIImage(named: "ball\(randomAnswer)")
    }

}

