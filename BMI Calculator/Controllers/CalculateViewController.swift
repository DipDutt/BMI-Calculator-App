//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    // MARK: - Properties.
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    var calculatorBrain = CalculatorBrain()
  
    // MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Create a Function heightChangeSlider.
    @IBAction func heightChangeSlider(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2fm", (sender.value))
    }
    
    // MARK: - Create a Function weightChangeSilder.
    @IBAction func weightChangeSilder(_ sender: UISlider) {
        weightLabel.text = String(format:"%.0fKg", (sender.value))
    }
    
    // MARK: - Create a Function to Calculate BMI Value.
    @IBAction func pressToCaluculateBMI(_ sender: UIButton) {
        let heightValue = (heightSlider.value)
        let weightValue = (weightSlider.value)
        calculatorBrain.calculateBMI(height: heightValue, weight: weightValue)
        self.performSegue(withIdentifier: "gotoResultViewController", sender: self)
    }
    
    // MARK: - Create a Function to Send BMI Value to ResultViewController.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoResultViewController" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBmiValue()
        }
    }
    
}

