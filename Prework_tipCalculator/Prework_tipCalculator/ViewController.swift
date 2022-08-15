//
//  ViewController.swift
//  Prework_tipCalculator
//
//  Created by Gargi Sheguri on 7/29/22.
//

import UIKit

    


class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    /*@IBAction func tipSlider(_ sender: Any) {
        let tip=Int(arguments:[Int(tipSlider.value*100)])
    
    }*/
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            //Sets the title in the Navigation Bar
        self.title = "Tip Calculator"
    }

    @IBAction func calculateTip(_ sender: Any) {
        //Get bill Amount from text field input
                let bill = Double(billAmountTextField.text!) ?? 0
                
                //Get Total tip by multiplying tip * tipPercentage
                let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
                let total = bill + tip

                //Update Tip Amount Label
                tipAmountLabel.text = String(format: "$%.2f", tip)
                //Update Total Amount
                totalLabel.text = String(format: "$%.2f", total)
    }
    
}

