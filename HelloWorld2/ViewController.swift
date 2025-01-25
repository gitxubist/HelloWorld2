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
    
    @IBOutlet weak var startButton: UIButton!
    
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
        
        startButton.setTitle("NEXT", for: .normal)
        semaphore.last?.alpha = 0.3
        semaphore.append(firstElement)
        firstElement.alpha = 1
    }
}




//По нажатию на кнопку «START» нужно зажечь красный свет и поменять заголовок кнопки на «NEXT». Последующее нажатие на кнопку «NEXT» должно менять активный цвет на следующий по порядку. Таким образом каждое последующее нажатие на кнопку "Next" должно последовательно менять сигналы светофора.

