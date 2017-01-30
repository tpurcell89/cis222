//
//  ViewController.swift
//  TipCalculator
//
//  Created by Multimedia on 1/23/17.
//  Copyright © 2017 Multimedia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtMealCost: UITextField!
    @IBOutlet weak var txtTipPercent: UITextField!
    @IBOutlet weak var lblTip: UILabel!
    @IBOutlet weak var lblTotal: UILabel!
    
    var mealCost = ""
    var tipPercent = ""
    
    var totalTip : Float = 0.0
    var totalMealCost : Float = 0.0
    
    @IBAction func btnCalculate(sender: UIButton) {
        calculateTip()
    }

    
    @IBAction func btnClear(sender: UIButton) {
        clearAmounts()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func calculateTip()
    {
        mealCost = txtMealCost.text!
        tipPercent = txtTipPercent.text!
        
        let fMealCost = Float (mealCost)
        let fTipPercent = Float(tipPercent)
        
        totalTip = fMealCost! * (fTipPercent! / 100)
        totalMealCost = totalTip + Float(mealCost)!
        
        printTip()
        
    }
    
    func printTip()
    {
        let formatTip = String(format: "%0.2f", totalTip)
        let formatTotal = String(format: "%0.2f", totalMealCost)
        
        lblTip.text = "Tip: $\(formatTip)"
        lblTotal.text = "Total: $\(formatTotal)"
    }
    
    func clearAmounts()
    {
        txtMealCost.text = ""
        txtTipPercent.text = ""
        lblTotal.text = "Total: $0.00"
        lblTip.text = "Tip: $0.00"
    }
}

