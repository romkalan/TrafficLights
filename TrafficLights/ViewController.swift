//
//  ViewController.swift
//  TrafficLights
//
//  Created by Roman Lantsov on 30.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var changeColorButton: UIButton!
    
    private let lightOff: CGFloat = 0.3
    private let lightOn: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        redLightView.alpha = lightOff
//        redLightView.layer.cornerRadius = redLightView.frame.width / 2
//        
//        yellowLightView.alpha = lightOff
//        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
//        
//        greenLightView.alpha = lightOff
//        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        
        changeColorButton.layer.cornerRadius = 15
        
    }
    
    override func viewDidLayoutSubviews() {
        redLightView.alpha = lightOff
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        
        yellowLightView.alpha = lightOff
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        
        greenLightView.alpha = lightOff
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        
        changeColorButton.layer.cornerRadius = 15
    }

    @IBAction func changeColorButtonDidTapped() {
        changeColorButton.setTitle("NEXT", for: .normal)
        
        if redLightView.alpha == lightOn {
            redLightView.alpha = lightOff
            greenLightView.alpha = lightOff
            yellowLightView.alpha = lightOn
        } else if yellowLightView.alpha == lightOn {
            redLightView.alpha = lightOff
            yellowLightView.alpha = lightOff
            greenLightView.alpha = lightOn
        } else {
            yellowLightView.alpha = lightOff
            greenLightView.alpha = lightOff
            redLightView.alpha = lightOn
        }
    }
    
}

