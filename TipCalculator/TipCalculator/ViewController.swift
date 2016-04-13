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
  let tipCalc = TipCalculatorModel(total: 50, tipPct: 0.05)
 
  func refreshUI() {
 
    tipPctSlider.value = Float(tipCalc.tipPct) * 100.0
    tipPctLabel.text = "Tip Percentage (\(Int(tipPctSlider.value))%)"
    print("Slider Value \(tipPctSlider.value)")

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
    tipCalc.total = Double((totalTextField.text! as NSString).doubleValue)

  }

  @IBAction func tipPercentageChanged(sender : AnyObject) {
    // round the slider value to an int for simplicity
    tipCalc.tipPct = round(Double(tipPctSlider.value)) / 100.0
    refreshUI()
  }
  
  @IBAction func viewTapped(sender : AnyObject) {
    totalTextField.resignFirstResponder()
  }
  
}

