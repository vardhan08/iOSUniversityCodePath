//
//  ViewController.swift
//  prework
//
//  Created by Vardhan Agarwal on 7/23/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var sliderTipPercent: UISlider!
    @IBOutlet weak var newTipPercent: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateTip(_ sender: Any) {
        
        // Get the bill amount
        let bill = Double(billAmountTextField.text!) ?? 0
        let newTipPercentage = sliderTipPercent.value
        newTipPercent.text = String(format: "%.2f%%", newTipPercentage*100)
        
        // Get the tip percent selected
        let tip = bill * Double(newTipPercentage)
        
        // Calculate the total bill
        let total = bill + tip
        
        // updates the labels to display appropriate values
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    

}

