//
//  ViewController.swift
//  UIKit_Practice
//
//  Created by Oscar Victoria Gonzalez  on 11/29/19.
//  Copyright © 2019 Oscar Victoria Gonzalez . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
@IBOutlet weak var slider: UISlider!
    
    var currentValue: Int = 0
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lroundf(slider.value)
    }

    @IBAction func showAlert() {
        let message = "The value of the slider is \(currentValue)"
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
     @IBAction func sliderMoved(_ slider: UISlider) {
   currentValue = lroundf(slider.value) }
}

