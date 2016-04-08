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
        tipTotal.text = String(number)
        print(tip)
        
        
        switch tip {
        case 0..<0.1:
            print("maaaan!!")
            var maybe = UIImage(named: "maybe")
            emoticon = UIImageView(image: maybe)
        case 20..<100:
            var maybe = UIImage(named: "maybe")
            emoticon = UIImageView(image: maybe)
        default:
            var maybe = UIImage(named: "maybe")
            emoticon = UIImageView(image: maybe)
        }
        
        
    }
    
    
    
    
}