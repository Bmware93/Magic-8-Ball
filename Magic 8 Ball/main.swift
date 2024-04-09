//
//  main.swift
//  Magic 8 Ball
//
//  Created by Benia Morgan-Ware on 4/8/24.
//

import Foundation

func playGame() {
    print("Response: \(askAQuestion())")
    print(askAnotherQuestion())
}

struct EightBall {
    var response: EightBallResponses
    
    mutating func shakeEightball() -> String {
        response = .allCases.randomElement()!
       
       switch response {
       case .positive:
           //I feel like I could force unwrap these since its an enum and I know it wont return nil
           return AffirmativeAnswers.allCases.randomElement()?.rawValue ?? AffirmativeAnswers.mostLikely.rawValue
       case .nonCommittal:
           return NonCommittalAnswers.allCases.randomElement()?.rawValue ?? NonCommittalAnswers.tryLater.rawValue
       case .negative:
           return NegativeAnswers.allCases.randomElement()?.rawValue ?? NegativeAnswers.doubtful.rawValue
       }
    }
}

enum EightBallResponses: CaseIterable{
    case positive, nonCommittal, negative
}

enum AffirmativeAnswers: String, CaseIterable {
    case certain = "It is certain"
    case decidedlySo = "It is decidedly so"
    case withoutDoubt = "Without a doubt"
    case definateYes = "Yes definitely"
    case rely = "You may rely on it"
    case asISeeIt = "As I see it, Yes"
    case mostLikely = "Most likely"
    case goodOutlook = "Outlook Good"
    case yes = "Yes"
    case signs = "Signs point to yes"
}

enum NonCommittalAnswers: String, CaseIterable {
    case hazy = "Reply hazy, try again"
    case tryLater = "Ask again later"
    case notNow = "Better not tell you now"
    case predict = "Cannot predict now"
    case askAgain = "Concentrate and ask again"
}

enum NegativeAnswers: String, CaseIterable {
    case dontCount = "Don't count on it"
    case no = "My reply is no"
    case SourcesSay = "My sources say no"
    case outlook = "Outlook not so good"
    case doubtful = "Very Doubtful"
}

playGame()


