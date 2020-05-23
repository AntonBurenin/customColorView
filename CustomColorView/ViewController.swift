//
//  ViewController.swift
//  CustomColorView
//
//  Created by Bober on 22/05/2020.
//  Copyright © 2020 AntonBu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var customView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSlider.value = 0.22
        redSlider.minimumTrackTintColor = .red
        greenSlider.value = 0.33
        greenSlider.minimumTrackTintColor = .green
        blueSlider.value = 0.44
        blueSlider.minimumTrackTintColor = .blue
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        
        customView.layer.cornerRadius = 10
        customView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }

    @IBAction func redSliderChanged() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        customView.backgroundColor = getColor()
    }
    
    @IBAction func greenSliderChanged() {
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        customView.backgroundColor = getColor()
    }
    
    @IBAction func blueSliderChanged() {
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        customView.backgroundColor = getColor()
    }
    
    private func getColor() -> UIColor {
        return UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
 
}

