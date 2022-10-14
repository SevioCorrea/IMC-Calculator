//
//  CalculatorBrain.swift
//  IMC Calculator
//
//  Created by Sévio on 11/10/22.
//

import Foundation
import UIKit


struct CalculatorBrain {
    
    var imc: IMC?
    
    
    func getIMCValue() -> String {
        let imcDecimal = String(format: "%.1f", imc?.value ?? 0.0)
        return imcDecimal
    }
    
    func getAdvice() -> String {
        return imc?.advice ?? "Sem avisos."
    }
    
    func getColor() -> UIColor {
        return imc?.color ?? UIColor.white
    }
    
    
    mutating func calculateIMC(height: Float, weight: Float) {
        let imcValue = weight / (height * height)
        if imcValue < 18.5 {
            imc = IMC(value: imcValue, advice: "Coma mais tortas rs.", color: UIColor(red: 0.07, green: 0.45, blue: 0.87, alpha: 1.00))
        }
        else if imcValue >= 18.5 && imcValue < 24.9 {
            imc = IMC(value: imcValue, advice: "Mantenha a dieta.", color: UIColor(red: 0.00, green: 0.55, blue: 0.01, alpha: 1.00))
        }
        else if imcValue > 24.9 {
            imc = IMC(value: imcValue, advice: "É melhor diminuir a comida.", color: UIColor(red: 0.72, green: 0.00, blue: 0.00, alpha: 1.00))
        }
    }
    
    
    
}
