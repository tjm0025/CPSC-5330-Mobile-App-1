//
//  ViewController.swift
//  ClockApp
//
//  Created by Tyanna on 11/5/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var backgroundView: UIView!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    
    @IBOutlet weak var startstopButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let darkColor = UIColor(red: 51/255, green: 52/255, blue: 50/255, alpha: 1.0)
        let greyColor = UIColor(red: 238/255, green: 240/255, blue: 239/255, alpha: 1.0)
        let hour = NSCalendar.current.component(.hour, from: NSDate() as Date)
   
        switch hour {
            //hours 1 to 6
        case 1...6: self.backgroundView.backgroundColor = darkColor
            break
            // hours 7 to 18
        case 7...18: self.backgroundView.backgroundColor = greyColor
            break
            //hours 19 to 23 and 0
        case 19...23, 0: self.backgroundView.backgroundColor = darkColor
            break
        default:self.backgroundView.backgroundColor = greyColor
        }
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (_) in
            let date = Date()
            
            let dateFormatter = DateFormatter()
            
            dateFormatter.dateFormat = "E,d MMMM yyyy HH:mm:ss Z"
            
            let currentTime = dateFormatter.string(from: date)
            
            self.timeLabel.text = currentTime
            
        }
    
        }
        
        }
        





