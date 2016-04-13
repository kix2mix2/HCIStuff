//
//  SuccessViewController.swift
//  TipCalculator
//
//  Created by Cristina Morariu on 08/04/16.
//  Copyright © 2016 Razeware LLC. All rights reserved.
//

import UIKit

class SuccessViewController: UIViewController {
    
    
    @IBOutlet weak var tipTotal: UILabel!
  
    @IBOutlet weak var emoticon: UIImageView!
    
    var number: Double = 0.0
    var tip: Double = 0.0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipTotal.text = "Your total is: \(String(number))"
        print(tip)
        
        switch tip {
        case 0..<0.1:
            print("sad")
            //check if image exists before trying to load it. (maybe include this lineas a hint in the tutorial?)
            if let image = UIImage(named:"sad") {
                emoticon?.image = image
            }
        case 0.1..<0.2:
            print("maybe")
            if let image = UIImage(named:"maybe") {
                emoticon?.image = image
            }
        default:
            print("happy")

            if let image = UIImage(named:"happy") {
                emoticon?.image = image
            }
        }
        
        
        
    }
    
    
    
    
}