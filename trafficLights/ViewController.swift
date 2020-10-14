//
//  ViewController.swift
//  trafficLights
//
//  Created by 1 on 13.10.2020.
//

import UIKit

enum ColourOfLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    @IBOutlet var startButton: UIButton!
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    var colourOfLight = ColourOfLight.red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        
    }

    @IBAction func startButtonPressed() {
        startButton.setTitle("NEXT", for: .normal)
        
        switch colourOfLight {
        case .red:
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
            colourOfLight = .yellow
        case .yellow:
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            colourOfLight = .green
        case .green:
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            colourOfLight = .red
        }
        
    }
    
    
}

