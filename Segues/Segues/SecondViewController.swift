//
//  SecondViewController.swift
//  Segues
//
//  Created by Justin on 2/13/18.
//

import UIKit

protocol CanRevceive {
    func dataReceived(data: String)
}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var secondTextLabel: UITextField!
    
    var delegate : CanRevceive?
    var data = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        secondLabel.text = data
    }
    
    @IBAction func sendDataBack(_ sender: Any) {
        delegate?.dataReceived(data: secondTextLabel.text!)
        dismiss(animated: true, completion: nil)
    }

}
