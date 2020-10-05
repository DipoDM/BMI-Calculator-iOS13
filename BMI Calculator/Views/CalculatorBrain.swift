//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by ODM on 6/27/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    
    mutating func calculateBMI(height: Float, weight: Float){
       let bmiValue = ((weight / pow(height,2)) * 703 )
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "You should eat more", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit fam!!!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "You eat less and exercise more", color: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))
        }
        //
    }
    
    func getBMIValue() -> String{
        let resultBMI = String(format: "%.1f", bmi?.value ?? 0.0)
        return resultBMI
    }
    
    func getAdvice() -> String{
        bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
