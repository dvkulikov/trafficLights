//
//  ViewController.swift
//  trafficLights
//
//  Created by 1 on 13.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var startButton: UIButton!
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    
    
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
        var colourOfLight = "red"
        switch colourOfLight {
        case "red":
            redLightView.alpha = 1
            startButton.setTitle("NEXT", for: .normal)
            colourOfLight = "yellow"
        case "yellow":
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            colourOfLight = "green"
        case "green":
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        default:
            greenLightView.alpha = 0.3
        }
        
    }
    
    
}

