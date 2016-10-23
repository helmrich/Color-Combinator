//
//  ViewController.swift
//  Color Combinator
//
//  Created by Tobias Helmrich on 05.08.16.
//  Copyright © 2016 Tobias Helmrich. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var colorView: UIView!
    
    @IBAction func updateColors() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        // Update the slider's minimum track tint color (left to the thumbs position)
        // to match the color's current value
        redSlider.minimumTrackTintColor = UIColor(red: red / 255, green: 0, blue: 0, alpha: 1)
        greenSlider.minimumTrackTintColor = UIColor(red: 0, green: green / 255, blue: 0, alpha: 1)
        blueSlider.minimumTrackTintColor = UIColor(red: 0, green: 0, blue: blue / 255, alpha: 1)
        
        colorView.backgroundColor = UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: 1.0)
        
    }
}

