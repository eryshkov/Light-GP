//
//  ViewController.swift
//  Light GP
//
//  Created by Evgeniy Ryshkov on 16.08.2018.
//  Copyright © 2018 Evgeniy Ryshkov. All rights reserved.
//

import UIKit
import AVFoundation

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
        let device = AVCaptureDevice.default(for: AVMediaType.video)
        
        if let dev = device, dev.hasTorch {
            view.backgroundColor = .black
            do {
                try dev.lockForConfiguration()
                dev.torchMode = isLightOn ? .on : .off
                dev.unlockForConfiguration()
            } catch {
                print(error)
            }
        } else {
            view.backgroundColor = isLightOn ? .white : .black
        }
    }
    
}

