//
//  ViewController.swift
//  traficLight
//
//  Created by Антон Полин  on 19.06.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redColor: UIView!
    @IBOutlet var yellowColor: UIView!
    @IBOutlet var greenColor: UIView!
    @IBOutlet var startButton: UIButton!

    
    override func viewDidLoad() {
     
        super.viewDidLoad()
        redColor.layer.cornerRadius = redColor.bounds.height / 2
        yellowColor.layer.cornerRadius = yellowColor.bounds.height / 2
        greenColor.layer.cornerRadius = greenColor.bounds.height / 2
        
        redColor.alpha = 0.3
        yellowColor.alpha = 0.3
        greenColor.alpha = 0.3
        
        startButton.layer.cornerRadius = 20
    }
    
     
          
    @IBAction func startButtonTapped() {
    startButton.setTitle( "Next", for: .normal)
        
        if redColor.alpha == yellowColor.alpha {
            redColor.alpha = 1
            greenColor.alpha = 0.3
        } else if redColor.alpha != greenColor.alpha {
                        redColor.alpha = 0.3
                        yellowColor.alpha = 1
        } else if yellowColor.alpha != greenColor.alpha {
            yellowColor.alpha = 0.3
            greenColor.alpha = 1
        }
            
    }
}




