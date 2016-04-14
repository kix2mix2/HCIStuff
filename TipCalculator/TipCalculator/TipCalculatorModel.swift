//
//  TipCalculatorModel.swift
//  TipCalculator
//
//  Created by Main Account on 9/15/15.
//  Copyright © 2015 Razeware LLC. All rights reserved.
//

import Foundation

class TipCalculatorModel {

  var total: Double
  var tipPct: Double
  var result: Double {
    //this gets called anytime an bjcts tries to access this property
    get {
      return total + (total*tipPct)
    }
  }
  
  init(total: Double, tipPct: Double) {
    self.total = total
    self.tipPct = tipPct
  }
    
    
}