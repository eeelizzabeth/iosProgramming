//
//  tipCalculator.swift
//  tipCalculator
//
//  Created by Elizabeth Hernandez on 8/26/19.
//  Copyright © 2019 Elizabeth Hernandez. All rights reserved.
//

import UIKit

class tipCalculator: UIViewController {

    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var percentControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let tipType = [0.10, 0.15]
        
        let bill = Double(userInput.text!) ?? 0
        let tip = (bill * tipType[percentControl.selectedSegmentIndex])
        
        let total = tip + bill
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    @IBAction func settingButton(_ sender: UIButton) {
        let settingsPage = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "settingsPage") as! PopUpViewController
    }
}
