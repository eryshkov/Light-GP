//
//  ViewController.swift
//  Light GP
//
//  Created by Evgeniy Ryshkov on 16.08.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isLightOn = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        isLightOn = !isLightOn
        updateView()
    }
    
    func updateView() {
        if isLightOn {
            view.backgroundColor = UIColor.white
        }else{
            view.backgroundColor = UIColor.black
        }
    }
    
}

