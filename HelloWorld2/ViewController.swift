//
//  ViewController.swift
//  HelloWorld2
//
//  Created by Evgeniy Morozov on 24.01.2025.
//

import UIKit
 
final class ViewController: UIViewController {
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet private var semaphore: [UIView] = []
    
    private let lightIsOn = 1.0
    private let lightIs0ff = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = redLightView.frame.size.height / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.size.height / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.size.height / 2
        
        semaphore = [redLightView, yellowLightView, greenLightView]
    }
    
    @IBAction func startButtonDidTapped() {
        let firstElement = semaphore.removeFirst()
        
        startButton.setTitle("NEXT", for: .normal)
        semaphore.last?.alpha = lightIs0ff
        semaphore.append(firstElement)
        firstElement.alpha = lightIsOn
    }
}
