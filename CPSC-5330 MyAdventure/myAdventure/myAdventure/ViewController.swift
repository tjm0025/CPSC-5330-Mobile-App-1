//
//  ViewController.swift
//  myAdventure
//
//  Created by Tyanna Malone on 11/12/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scenarioLabel: UILabel!
    
    @IBOutlet weak var optionOne: UIButton!
    
    @IBOutlet weak var optionTwo: UIButton!
    
    var storyBrain = LogicStory()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    @IBAction func choiceChosen(_ sender: Any) {
        storyBrain.nextStory(userChoice: (sender as AnyObject).currentTitle!)
        
            updateUI()
        
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: 
                                #selector(updateUI), userInfo: nil, repeats: false)
    }
    @objc func updateUI() {
        scenarioLabel.text = storyBrain.storyTitle()
        optionOne.setTitle(storyBrain.choiceTitle1(), for: 
                .normal)
        
        optionTwo.setTitle(storyBrain.choiceTitle2(), for: 
                .normal)
    }
}

