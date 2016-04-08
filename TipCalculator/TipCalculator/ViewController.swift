//
//  ViewController.swift
//  TipCalculator
//
//  Created by Main Account on 9/15/15.
//  Copyright © 2015 Razeware LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet var totalTextField : UITextField!
  @IBOutlet var tipPctSlider : UISlider!
  @IBOutlet var tipPctLabel : UILabel!
  @IBOutlet var resultsTextView : UITextView!
  let tipCalc = TipCalculatorModel(total: 33.25, tipPct: 0.06)
 
  func refreshUI() {
    // 1
    totalTextField.text = String(format: "%0.2f", tipCalc.total)
    // 2
    tipPctSlider.value = Float(tipCalc.tipPct) * 100.0
    // 3
    tipPctLabel.text = "tip Percentage (\(Int(tipPctSlider.value))%)"
    // 4
    resultsTextView.text = ""
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    refreshUI()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let successViewController = segue.destinationViewController as! SuccessViewController
    successViewController.number = tipCalc.result
    successViewController.tip = tipCalc.tipPct
  
}
    
  @IBAction func calculateTapped(sender : AnyObject) {
    // 1
    tipCalc.total = Double((totalTextField.text! as NSString).doubleValue)

  }

  @IBAction func tipPercentageChanged(sender : AnyObject) {
    tipCalc.tipPct = Double(tipPctSlider.value) / 100.0
    refreshUI()
  }
  
  @IBAction func viewTapped(sender : AnyObject) {
    totalTextField.resignFirstResponder()
  }
  
}

