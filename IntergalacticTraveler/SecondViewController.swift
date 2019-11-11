//
//  SecondViewController.swift
//  IntergalacticTraveler
//
//  Created by Kamil Pacana on 11/8/19.
//  Copyright © 2019 John Hersey High School. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var starImageView: UIImageView!
    var StarColor: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        let randomNumber = Int.random(in: 1...3)
        let myImage = UIImage(named: "\(StarColor)\(randomNumber)")
        
        starImageView.image = myImage

    }

}
