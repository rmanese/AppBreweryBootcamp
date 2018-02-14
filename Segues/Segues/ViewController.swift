//
//  ViewController.swift
//  Segues
//
//  Created by Justin on 2/13/18.
//

import UIKit

class ViewController: UIViewController, CanRevceive {
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func sendButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "sendDataForward", sender: self)
    }
    
    @IBAction func goGreen(_ sender: Any) {
        view.backgroundColor = UIColor.green
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataForward" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.data = firstTextField.text!
            secondVC.delegate = self
        }
    }
    
    func dataReceived(data: String) {
        firstLabel.text = data
    }

}

