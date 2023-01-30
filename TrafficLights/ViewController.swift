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
    
    private let lightOff: CGFloat = 0.3
    private let lightOn: CGFloat = 1
    
    @IBOutlet var changeColorButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = lightOff
        redLightView.layer.cornerRadius = 60
        
        yellowLightView.alpha = lightOff
        yellowLightView.layer.cornerRadius = 60
        
        greenLightView.alpha = lightOff
        greenLightView.layer.cornerRadius = 60
        
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

