//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Dip Dutt on 19/9/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmiValue:Float?
    
    
    mutating func calculateBMI(height:Float, weight:Float) {
        bmiValue = weight / pow(height, 2)
    }
    
    func getBmiValue()-> String {
        return String(format:"%.1f", bmiValue ?? 0)
    }
    
}
