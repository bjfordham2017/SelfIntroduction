//
//  MadLib.swift
//  SelfIntroduction
//
//  Created by Brent Fordham on 6/19/17.
//  Copyright © 2017 Brent Fordham. All rights reserved.
//

import Foundation

class MadLib {
    var firstNoun: String = "noun"
    var verb: String = "verb-ing"
    var secondNoun: String = "another noun"
    var adjective: String = "adjective"
    
    var firstArticle: String {
        if firstNoun.hasPrefix("a") || firstNoun.hasPrefix("e") || firstNoun.hasPrefix("i") || firstNoun.hasPrefix("o") || firstNoun.hasPrefix("u") {
            return "an"
        } else {
            return "a"
        }
    }
    
    var secondArticle: String {
        if secondNoun.hasPrefix("a") || secondNoun.hasPrefix("e") || secondNoun.hasPrefix("i") || secondNoun.hasPrefix("o") || secondNoun.hasPrefix("u") {
            return "an"
        } else {
            return "a"
        }
    }
    
    var madLibText: String {
        return "I saw the strangest thing while I was out around town today. \(firstArticle) \(firstNoun) was \(verb) \(secondArticle) \(secondNoun).  I felt very \(adjective)"
    }
    
    init(firstNoun: String?, verb: String?, secondNoun: String?, adjective: String?) {
        if let enterdNounOne = firstNoun {
            self.firstNoun = enterdNounOne
        }
        
        if let enteredVerb = verb {
            self.verb = enteredVerb
        }
        
        if let enteredNounTwo = secondNoun {
            self.secondNoun = enteredNounTwo
        }
        
        if let enteredAdjective = adjective {
            self.adjective = enteredAdjective
        }
    }
    
}
