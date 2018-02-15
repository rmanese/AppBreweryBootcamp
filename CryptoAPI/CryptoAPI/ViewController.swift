//
//  ViewController.swift
//  CryptoAPI
//
//  Created by Roberto on 2/14/18.
//  Copyright © 2018 jawn. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    @IBOutlet weak var priceLabel: UILabel!
    
    static let kBPI = "bpi"
    static let kUSD = "USD"
    static let kRATE = "rate_float"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        priceLabel.text = "..."
        
        Alamofire.request("https://api.coindesk.com/v1/bpi/currentprice.json").responseJSON { response in
            if response.result.isSuccess {
                let bitCoinJSON: JSON = JSON(response.result.value!)
                if let coinResult = bitCoinJSON["bpi"]["USD"]["rate_float"].double {
//                let bitcoinObject: Dictionary = bitcoinJSON as! Dictionary<String, Any>
//                let bpiObject:Dictionary = bitcoinObject[ViewController.kBPI] as! Dictionary<String, Any>
//                let usdObject:Dictionary = bpiObject[ViewController.kUSD] as! Dictionary<String, Any>
//                let rate: Float = usdObject[ViewController.kRATE] as! Float
                
                self.priceLabel.text = "\(coinResult)"
                }
            }
        }

    }

}
