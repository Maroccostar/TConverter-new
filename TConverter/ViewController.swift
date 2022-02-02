//
//  ViewController.swift
//  TConverter
//
//  Created by user on 27.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var celciusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {// create connection \+2\+3\+4\+5
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
            
        }
    }
    
    @IBAction func sliderChange(_ sender: UISlider) {
        
        let temperatureCelcius = Int(round(sender.value))
        celciusLabel.text = "\(temperatureCelcius)ºC"
        let fahrenheitTemperature = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(fahrenheitTemperature)ºF"
    }
    
}

// pull
// проверка git
