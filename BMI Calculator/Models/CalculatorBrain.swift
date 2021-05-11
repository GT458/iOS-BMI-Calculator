//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Sohrob Ibrahimi on 11/3/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi:BMI?
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight/(height*height)
        var bmiAdvice:String
        var bmiColor:UIColor
        if bmiValue > 24.9 {
            bmiAdvice = "You need to cut back on the calories!"
            bmiColor = UIColor.red
        } else if bmiValue >= 18.5 {
            bmiAdvice = "Looking fit!"
            bmiColor = UIColor.green
        } else {
            bmiAdvice = "Try eating a bit more!"
            bmiColor = UIColor.cyan
        }
        bmi = BMI(value: bmiValue, advice: bmiAdvice, color: bmiColor)
    }
    
    func getBMIValue()->Float {
        return bmi?.value ?? 0.0
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.blue 
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Keep doing what you're doing!"
    }
}
