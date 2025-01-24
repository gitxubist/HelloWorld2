//
//  ViewController.swift
//  HelloWorld2
//
//  Created by Evgeniy Morozov on 24.01.2025.
//

import UIKit

class ViewController: UIViewController {
    var semaphore: [UIView] = []

    @IBOutlet weak var redLightLabel: UIView!
    @IBOutlet weak var yellowLightLabel: UIView!
    @IBOutlet weak var greenLightLabel: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaultCoreGraphics = CGRect(x: 0, y: 0, width: 100, height: 100)
        
        redLightLabel.bounds = defaultCoreGraphics
        yellowLightLabel.bounds = defaultCoreGraphics
        greenLightLabel.bounds = defaultCoreGraphics
        
        redLightLabel.layer.cornerRadius = defaultCoreGraphics.height / 2
        yellowLightLabel.layer.cornerRadius = defaultCoreGraphics.height / 2
        greenLightLabel.layer.cornerRadius = defaultCoreGraphics.height / 2
        
        redLightLabel.alpha = 0.3
        yellowLightLabel.alpha = 0.3
        greenLightLabel.alpha = 0.3
        
        semaphore = [redLightLabel, yellowLightLabel, greenLightLabel]
    }

    @IBAction func startButtonDidTapped() {
        let firstElement = semaphore.removeFirst()
        semaphore.append(firstElement)
        
        firstElement.alpha = 1
        }
    }


