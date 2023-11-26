//
//  ConverisonView.swift
//  currencyConversion
//
//  Created by Tyanna on 11/26/23.
//

import UIKit

class OutputView: UIViewController {

  
    @IBOutlet weak var userEntered: UILabel!
    
    @IBOutlet weak var yenText: UILabel!
    
    @IBOutlet weak var pesoText: UILabel!
    
    @IBOutlet weak var euroText: UILabel!
    
    @IBOutlet weak var ausText: UILabel!
    
    var logic = conversionLogic()
    
    var usdAmount = ""
    var yenConvert = ""
    var pesoConvert = ""
    var euroConvert = ""
    var ausConvert = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        userEntered.text = "USD: $ \(usdAmount)"
                
                let character = CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: usdAmount))
                
                if character {
                    
                    if yenConvert == "0" {
                        yenText.isHidden = true
                        
                    } else {
                        yenText.text = "Japanese Yen: \(yenConvert)"
                    }
                    
                    if pesoConvert == "0" {
                        pesoText.isHidden = true
                    } else {
                        pesoText.text = "Mexican Pesos: \(pesoConvert)"
                    }
                    
                    if euroConvert == "0" {
                        euroText.isHidden = true
                    } else {
                        euroText.text = "Euro: \(euroConvert)"
                    }
                    
                    if ausConvert == "0" {
                        ausText.isHidden = true
                    } else {
                        ausText.text = "Australian Dollar: \(ausConvert)"
                    }
                } else {
                    userEntered.text = "Incorrect user input. Integers only."
                    yenText.isHidden = true
                    pesoText.isHidden = true
                    euroText.isHidden = true
                    ausText.isHidden = true
                }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
