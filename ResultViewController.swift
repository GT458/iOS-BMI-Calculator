//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Sohrob Ibrahimi on 10/29/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var resultBackground: UIImageView!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue: String?
    var color: UIColor?
    var advice: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        resultBackground.backgroundColor = color
        
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
}
