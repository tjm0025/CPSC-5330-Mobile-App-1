//
//  currencyLogic.swift
//  currencyConversion
//
//  Created by Tyanna on 11/26/23.
//

import Foundation

struct conversionLogic {
    var yen = 149.44
    var pesos = 17.14
    var euro = 0.91
    var aus = 1.52
    
    var currOneSwitch = true
    var currTwoSwitch = true
    var currThreeSwitch = true
    var currFourSwitch = true
    
    mutating func setYen(_ switchValue: Bool) {
        if switchValue {
            currOneSwitch = true
        } else {
            currOneSwitch = false
        }
    }
    
    mutating func setPesos(_ switchValue: Bool) {
        if switchValue {
            currTwoSwitch = true
        } else {
            currTwoSwitch = false
        }
    }
    
    mutating func setEuro(_ switchValue: Bool) {
        if switchValue {
            currThreeSwitch = true
        } else {
            currThreeSwitch = false
        }
    }
    mutating func setAus(_ switchValue: Bool) {
        if switchValue {
            currFourSwitch = true
        } else {
            currFourSwitch = false
        }
    }
    
    func usToYen(_ userInput: String) -> String {
        let character = CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: userInput))
        if userInput != "" && character {
            let usd = Double(userInput)!
            let value = usd * Double(yen)
            let dString = String(format: "%.2f", value)
            return dString
        } else {
            return "0"
        }
    }
    
    func usToPeso(_ userInput: String) -> String {
        let character = CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: userInput))
        if userInput != "" && character {
            let usd = Double(userInput)!
            let value = usd * Double(pesos)
            let dString = String(format: "%.2f", value)
            return dString
        } else {
            return "0"
        }
    }
    
    func usToEuro(_ userInput: String) -> String {
        let character = CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: userInput))
        if userInput != "" && character {
            let usd = Double(userInput)!
            let value = usd * Double(euro)
            let dString = String(format: "%.2f", value)
            return dString
        } else {
            return "0"
        }
    }
    
    func usToAus(_ userInput: String) -> String {
        let character = CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: userInput))
        if userInput != "" && character {
            let usd = Double(userInput)!
            let value = usd * Double(aus)
            let dString = String(format: "%.2f", value)
            return dString
        } else {
            return "0"
        }
    }
}

        

