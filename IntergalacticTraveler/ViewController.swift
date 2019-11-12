//
//  ViewController.swift
//  IntergalacticTraveler
//
//  Created by Kamil Pacana on 11/5/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//this is cool

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let data = colorTextField.text,data != "Blue || Red" {
        let NVC = segue.destination as! SecondViewController
            NVC.StarColor = data
        }else{
            let alert = UIAlertController(title: "Error", message: "There was no data", preferredStyle: .alert)
            let button = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(button)
            present(alert, animated: true, completion: nil)
        }
    }
    
}

