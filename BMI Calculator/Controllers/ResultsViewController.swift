//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by ODM on 6/27/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var bmiResultLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBAction func reCalcButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    var bmiResult : String?
    var advice : String?
    var color : UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiResultLabel.text = bmiResult
        tipLabel.text = advice
        view.backgroundColor = color

        // Do any additional setup after loading the view.
    }
}
