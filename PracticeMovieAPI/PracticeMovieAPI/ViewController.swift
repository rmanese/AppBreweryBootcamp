//
//  ViewController.swift
//  PracticeMovieAPI
//
//  Created by Roberto on 2/14/18.
//  Copyright © 2018 jawn. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    
//    let url: String = "http://www.omdbapi.com/?i=tt3896198&apikey=98ca341a&s="
    var finalURL: String = "https://www.omdbapi.com/?i=tt3896198&apikey=98ca341a&s=black"

    @IBOutlet weak var movieLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getMovieData(url: finalURL)
    }
    
    func getMovieData(url: String) {
        Alamofire.request(url, method: .get).responseJSON {
            response in
            if response.result.isSuccess {
                let movieJSON: JSON = JSON(response.result.value!)
                if let movieResult = movieJSON["Search"][0]["Title"].string {
                    self.movieLabel.text = "\(movieResult)"
                }
            }
        }
    }

}

