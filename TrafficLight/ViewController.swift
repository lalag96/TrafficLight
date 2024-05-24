//
//  ViewController.swift
//  TrafficLight
//
//  Created by  Влад on 23.05.2024.
//

import UIKit

enum CurrentLight {
case red, yellow, green
}

class ViewController: UIViewController {

    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet var startButton: UIButton!
    

    
    private var currentLight = CurrentLight.red
    private let lightOn:CGFloat = 1
    private let lightOff:CGFloat = 0.5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.alpha = lightOff
        yellowView.alpha = lightOff
        greenView.alpha = lightOff
        
        startButton.layer.cornerRadius = 15
        
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = redView.frame.width / 2
        greenView.layer.cornerRadius = redView.frame.width / 2
        
    }

    @IBAction func startBButtonPressed() {
            startButton.setTitle("NEXT", for: .normal)
    
        
        switch currentLight {
        case .red:
            redView.alpha = lightOn
            greenView.alpha = lightOff
            currentLight = .yellow
        case .yellow:
            redView.alpha = lightOff
            yellowView.alpha = lightOn
            currentLight = .green
        default:
            yellowView.alpha = lightOff
            greenView.alpha = lightOn
            currentLight = .red
        }
    }
    
    
}

