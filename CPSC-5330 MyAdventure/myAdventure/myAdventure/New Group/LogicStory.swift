//
//  LogicStory.swift
//  myAdventure
//
//  Created by Tyanna on 11/12/23.
//

import Foundation

struct LogicStory {
    let stories = [
        Story(title: "You have arrived to a fork in the road in a majestic woodland. One road leads to a waterall, while the other leads to a cave. Which path do you choose?", choice1: "The trail to the waterfall.", choice1Outcome: 1, choice2: "The trail to the cave.", choice2Outcome: 2),
        
        Story(title: "After exploring the trail of your choice, you arrive at mysterious home. An angry wizard swings open the door, ready to duel those who intrude on his land. Do you....", choice1: "Plead with the wizard", choice1Outcome: 3, choice2: "Prepare yourself for battle!", choice2Outcome: 4),
        
        Story(title: "You manage to negotiate with the wizard, who apologizes for his outburst. He gives you directions to the local village or another far away kingdom. Which do you choose?", choice1: "Local Village", choice1Outcome: 5, choice2: "Far Away kingdom", choice2Outcome: 6),
        
        Story(title: "You barely manage to defeat the wizard, who disappears in a puff of smoke.  The door to his home is wide open and inside you find a large amount of gold and books on wizardry! You take as much as you are able and continue your travels." ,choice1: "The", choice1Outcome: 0, choice2: "End", choice2Outcome: 0),
        
        Story(title: "You've arrived at the local village, only to find it has been abandoned and plundered by a band of thieves. You continue on your travels empty handed.",choice1: "The", choice1Outcome: 0, choice2: "End", choice2Outcome: 0),
        
        Story(title:"You arrive at the far away kingdom per the wizard's directions. The king of the land determines you are his long lost child  & heir to the throne and you live the rest of your life as a royal!" , choice1: "The", choice1Outcome: 0, choice2: "End", choice2Outcome: 0)
        
    ]
    
    var storyNumber = 0
    
    mutating func nextStory(userChoice: String) {
        
        let currentStory = stories[storyNumber]
        
        if userChoice == currentStory.choice1 {
            storyNumber = stories[storyNumber].choice1Outcome
        }
        else {
            storyNumber = stories[storyNumber].choice2Outcome
        }
        
    }
    
    func storyTitle() -> String {
        return stories[storyNumber].title
    }
    
    func choiceTitle1() -> String {
        return stories[storyNumber].choice1
    }
    
    func choiceTitle2() -> String {
        return stories[storyNumber].choice2
    }
}
