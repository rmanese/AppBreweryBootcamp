//
//  ViewController.swift
//  PracticeDotaAPI
//
//  Created by Roberto on 2/14/18.
//  Copyright © 2018 Roberto. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    @IBOutlet weak var heroLabel: UILabel!
    
    let url: String = "https://api.opendota.com/api/heroStats"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getDotaData(url: url)
    }
    
    func getDotaData(url: String) {
        Alamofire.request(url, method: .get).responseJSON {
            response in
            if let dotaJSON: JSON = JSON(response.result.value!) {
                let result = dotaJSON[0]["localized_name"]
                self.heroLabel.text = "\(result)"
            }
        }
    }
    
}
