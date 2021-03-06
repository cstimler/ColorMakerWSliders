//
//  ViewController.swift
//  ColorMakerWSliders
//
//  Created by June2020 on 4/4/21.
//

import UIKit

// MARK: Outlets


class ViewController: UIViewController {
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet var redNumberLabel: UILabel!
    @IBOutlet var greenNumberLabel: UILabel!
    @IBOutlet var blueNumberLabel: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func fillColorInView() {
        
        var redValue: CGFloat = 0
        var greenValue: CGFloat = 0
        var blueValue: CGFloat = 0
        
        redValue = CGFloat(redSlider.value)
        greenValue = CGFloat(greenSlider.value)
        blueValue = CGFloat(blueSlider.value)
        
        colorView.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1)
        
        fillInColorNumbers(red: redValue, green: greenValue, blue: blueValue)
    }
    
    func fillInColorNumbers (red: CGFloat, green: CGFloat, blue: CGFloat) {
        
        let red255 = Int(red*255)
        let green255 = Int(green*255)
        let blue255 = Int(blue*255)
        
        redNumberLabel.text = String(red255)
        greenNumberLabel.text = String(green255)
        blueNumberLabel.text = String(blue255)
        
    }

}

