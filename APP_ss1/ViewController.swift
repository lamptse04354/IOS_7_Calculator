//
//  ViewController.swift
//  APP_ss1
//
//  Created by Admin on 4/16/17.
//  Copyright © 2017 Pham Lam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbResult: UILabel!
    
    var result  = 0
    var firstInput  = 0
    var  secondInput = 0
    var name : String = "0"
    var isCalculated = false
    
    
    @IBAction func ACTouched(_ sender: UIButton) {
        lbResult.text = "0"
        firstInput = 0
        secondInput = 0
        result = 0
        name = "0"
    }

    @IBAction func zeroTouched(_ sender: UIButton) {
        firstInput = firstInput*10
        lbResult.text = "\(firstInput)"
    }
    
    @IBAction func oneTouched(_ sender: UIButton) {
        firstInput = firstInput*10 + 1
        lbResult.text = "\(firstInput)"
    }
    
    @IBAction func twoTouched(_ sender: UIButton) {
        firstInput = firstInput*10 + 2
        lbResult.text = "\(firstInput)"
    }
    
    @IBAction func threeTouched(_ sender: UIButton) {
        firstInput = firstInput*10 + 3
        lbResult.text = "\(firstInput)"
    }
    
    @IBAction func fourToched(_ sender: UIButton) {
        firstInput = firstInput*10 + 4
        lbResult.text = "\(firstInput)"
    }
    
    
    @IBAction func fiveTouched(_ sender: UIButton) {
        firstInput = firstInput*10 + 5
        lbResult.text = "\(firstInput)"
    }
    
    @IBAction func sixTouched(_ sender: UIButton) {
        firstInput = firstInput*10 + 6
        lbResult.text = "\(firstInput)"
    }
    
    @IBAction func sevenTouched(_ sender: UIButton) {
        firstInput = firstInput*10 + 7
        lbResult.text = "\(firstInput)"
    }
    
    @IBAction func eightTouched(_ sender: UIButton) {
        firstInput = firstInput*10 + 8
        lbResult.text = "\(firstInput)"
    }
    
    @IBAction func nineTouched(_ sender: UIButton) {
        firstInput = firstInput*10 + 9
        lbResult.text = "\(firstInput)"
    }
    
    @IBAction func devideTouched(_ sender: UIButton) {
        if isCalculated == false {
            cal(cOperator: name, input: firstInput, input1: secondInput)
            isCalculated = true
            secondInput = firstInput
            firstInput = 0
            name = "/"
        }else {
            cal(cOperator: name, input: firstInput, input1: secondInput)
            
            secondInput = result
            firstInput = 0
            name = "/"
        }
        
        
    }
    
    @IBAction func xToched(_ sender: UIButton) {
        if isCalculated == false {
            cal(cOperator: name, input: firstInput, input1: secondInput)
            isCalculated = true
            secondInput = firstInput
            firstInput = 0
            name = "x"
        }else {
            cal(cOperator: name, input: firstInput, input1: secondInput)
            
            secondInput = result
            firstInput = 0
            name = "x"
        }
    }
    
    @IBAction func subTouched(_ sender: UIButton) {
        if isCalculated == false {
            cal(cOperator: name, input: firstInput, input1: secondInput)
            isCalculated = true
            secondInput = firstInput
            firstInput = 0
            name = "-"
        }else {
            cal(cOperator: name, input: firstInput, input1: secondInput)
            
            secondInput = result
            firstInput = 0
            name = "-"
        }
    }
    
    @IBAction func addTouched(_ sender: UIButton) {
        if isCalculated == false {
            cal(cOperator: name, input: firstInput, input1: secondInput)
            isCalculated = true
            secondInput = firstInput
            firstInput = 0
            name = "+"
        }else {
            cal(cOperator: name, input: firstInput, input1: secondInput)
            
            secondInput = result
            firstInput = 0
            name = "+"
        }
    }
    
    @IBAction func showResultTouched(_ sender: UIButton) {
        cal(cOperator: name, input: firstInput, input1: secondInput)
        
        secondInput = result
        firstInput = 0
        
    }
    
    func cal(cOperator : String, input : Int, input1 : Int) -> Void {
        if cOperator.contains("/") {
            result = input1 / input
        }else if cOperator.contains("x"){
            result = input1 * input
        }else if cOperator.contains("-"){
            result = input1 - input
        }else if cOperator.contains("+"){
            result = input1 + input
        }else if cOperator.contains("0"){
            result = 0
        }
        lbResult.text = "\(result)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

