//
//  ViewController.swift
//  autoLaylout
//
//  Created by Roberto Manese III on 2/11/18.
//  Copyright © 2018 maobaoCoder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let square = UIView(frame: CGRect(x: self.view.frame.width / 2, y: self.view.frame.height / 2, width: 100, height: 100))
        square.backgroundColor = UIColor.green
        self.view.addSubview(square)
    }

}

