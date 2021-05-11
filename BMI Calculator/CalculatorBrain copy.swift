//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Sohrob Ibrahimi on 11/3/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmi:Float?
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = weight/(height*height)
    }
    
    func getBMIValue()->Float {
        return bmi ?? 0.0
    }
}
