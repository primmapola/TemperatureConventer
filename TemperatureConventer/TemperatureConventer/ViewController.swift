//
//  ViewController.swift
//  TemperatureConventer
//
//  Created by dongr on 13.02.2022.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var cenliusLable: UILabel!
    @IBOutlet weak var slider: UISlider!{
        didSet{
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    @IBOutlet weak var fahrenheitLable: UILabel!
    
    @IBAction func sliderAction(_ sender: UISlider) {
        let temperaureCelsius = Int(sender.value)
        cenliusLable.text = "\(temperaureCelsius)ºC"
        let farTemperature = Int(sender.value * 9 / 5 + 32)
        fahrenheitLable.text = "\(farTemperature)ºF"
    }
    
    
}

