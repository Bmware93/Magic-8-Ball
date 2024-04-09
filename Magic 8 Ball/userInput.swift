//
//  userInput.swift
//  Magic 8 Ball
//
//  Created by Benia Morgan-Ware on 4/8/24.
//

import Foundation

func askAQuestion() -> String {
    print("Ask a yes or no question..")
    var question = readLine()
    var eightBall = EightBall(response: .nonCommittal)
    
    return eightBall.shakeEightball()
}

func askAnotherQuestion() -> String {
    print("Do you want to ask another question?")
    var response = readLine()
    
    if let response {
        if response.localizedCaseInsensitiveContains("y") {
            return askAQuestion()
        }
    }
    return "Thank you for playing"
}



