//
//  CalculatorBrain.swift
//  IMC Calculator
//
//  Created by Sévio on 11/10/22.
//

import Foundation


struct CalculatorBrain {
    
    var imc: Float?
    
    
    func getIMCValue() -> String {
        let imcDecimal = String(format: "%.1f", imc)
        return imcDecimal
    }
    
    mutating func calculateIMC(height: Float, weight: Float) {
        imc = weight / (height * height)
    }
    
    
}
