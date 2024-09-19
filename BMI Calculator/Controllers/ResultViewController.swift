//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Dip Dutt on 18/9/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet weak var bmiValueLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue:String?
    var bmiAdvice:String?
    var bmiColor:UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showBmiValue()
    }
    
    // MARK: - Create Funtion to show showshowBmiValue.
    
    func showBmiValue() {
        bmiValueLabel.text = bmiValue
        adviceLabel.text = bmiAdvice
        view.backgroundColor = bmiColor
    }
    
    
    @IBAction func pressRecalculateButton(_ sender: UIButton) {
        
    }

}
