//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Dip Dutt on 19/9/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi:BMI?
    
    
    mutating func calculateBMI(height:Float, weight:Float) {
       let  bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
           bmi = BMI(value: bmiValue, advice: "Eat More Pies", color: .blue)
        }
        
        else if bmiValue > 18.5 {
            bmi = BMI(value: bmiValue, advice: "You are Fit", color: .green)
        }
        
        else {
            bmi = BMI(value: bmiValue, advice: "Eat Less Pie", color: .red)
        }
        
    }
    
    func getBmiValue()-> String {
        return String(format:"%.1f", bmi?.value ?? 0)
    }
    
}
