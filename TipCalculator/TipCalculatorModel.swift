//
//  TipCalculatorModel.swift
//  TipCalculator
//
//  Created by pavel on 7/9/16.
//  Copyright © 2016 pavel. All rights reserved.
//

import Foundation

// 1
class TipCalculatorModel {
    
    // 2
    var total: Double
    var taxPct: Double
    var subtotal: Double {
        get {
            return total / (taxPct + 1)
        }
        set(newSubtotal) {
            //kugkg
        }
    }
    
    // 3
    init(total: Double, taxPct: Double) {
        self.total = total
        self.taxPct = taxPct
        
    }
    
    // 4
    func calcTipWithTipPct(tipPct: Double) -> Double {
        return subtotal * tipPct
    }
    
    // 5
    func printPossibleTips() {
        print("15%: \(calcTipWithTipPct(0.15))")
        print("18%: \(calcTipWithTipPct(0.18))")
        print("20%: \(calcTipWithTipPct(0.20))")
    }
    
}

