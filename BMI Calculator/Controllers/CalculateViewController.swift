//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBAction func heightAction(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2fft", sender.value)
    }
    
    @IBAction func weightAction(_ sender: UISlider) {
        weightLabel.text = String(format: "%.2flb", sender.value)
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = Float(String(format: "%.2f",weightSlider.value))
        let feet = Float(String(format: "%.0f", height))
        let inches = Float(String(format: "%.0f",((feet! - height) * 100)))
        let ftIn = (feet! * 12) + abs(inches!)
        //let BMI = ((weight! / pow(ftIn,2)) * 703 )
        
        calculatorBrain.calculateBMI(height: ftIn, weight: weight!)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
       }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiResult = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    
}

