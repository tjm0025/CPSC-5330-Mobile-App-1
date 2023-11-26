//
//  ViewController.swift
//  currencyConversion
//
//  Created by Tyanna on 11/26/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputUSD: UITextField!
    
    
    var logic = conversionLogic()
    
    var amount = ""
    var userEntered = ""
    var yenString = ""
    var pesoString = ""
    var euroString = ""
    var ausString = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        guard NSCharacterSet(charactersIn: "0123456789").isSuperset(of: NSCharacterSet(charactersIn: string) as CharacterSet) else {
            return false
        }
        return true
    }
    
  
    @IBAction func inputUSD(_ sender: UITextField) {
    }
    
    @IBAction func currOne(_ sender: UISwitch) {
        logic.setYen(sender.isOn)
    }
    
    @IBAction func currTwo(_ sender: UISwitch) {
        logic.setPesos(sender.isOn)
    }
    
    @IBAction func currThree(_ sender: UISwitch) {
        logic.setEuro(sender.isOn)
    }
    
    @IBAction func currFour(_ sender: UISwitch) {
        logic.setAus(sender.isOn)
    }
    
    @IBAction func buttonConvert(_ sender: UIButton) {
        let userInput = inputUSD.text
        
        if logic.currOneSwitch {
            yenString = logic.usToYen(userInput!)
        } else {
            yenString = "0"
        }
        
        if logic.currTwoSwitch {
            pesoString = logic.usToPeso(userInput!)
        } else {
            pesoString = "0"
        }
        
        if logic.currThreeSwitch {
            euroString = logic.usToEuro(userInput!)
        } else {
            euroString = "0"
        }
        
        if logic.currFourSwitch {
            ausString = logic.usToAus(userInput!)
        } else {
            ausString = "0"
        }
        self.performSegue(withIdentifier: "conversion", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "conversion" {
            let navigation = segue.destination as! OutputView
            navigation.usdAmount  = inputUSD.text!
            navigation.yenConvert = yenString
            navigation.pesoConvert = pesoString
            navigation.euroConvert = euroString
            navigation.ausConvert = ausString
            
        }
        
    }
}

