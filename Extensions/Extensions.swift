//
//  Extensions.swift
//  Extensions
//
//  Created by TJ Carney on 2/3/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

extension String {
    func whisper() -> String {
        return self.lowercased()
    }
    
    
}

extension String {
    func shout() -> String {
        return self.uppercased()
    }
}

extension String {
    var pigLatin: String {
        var lowercasedWords = self.lowercased()
        var wordArray = lowercasedWords.components(separatedBy: " ")
        var finalString: String = ""
        for word in wordArray {
            var pigLatinString = word
            var firstLetter = pigLatinString.characters.removeFirst()
            pigLatinString.characters.insert(firstLetter, at: pigLatinString.characters.endIndex)
            pigLatinString.characters.insert("a", at: pigLatinString.characters.endIndex)
            pigLatinString.characters.insert("y", at: pigLatinString.characters.endIndex)
            if finalString.isEmpty {
                finalString = pigLatinString.capitalized
            } else {
                
                finalString = "\(finalString.capitalized) \(pigLatinString.capitalized)"
            }
        }
        return finalString
    }
}


extension String {
    var points: Int {
        var score: Int = 0
        var lowercasedWord = self.lowercased()
        var characterArray = Array(lowercasedWord.characters)
        if characterArray.isEmpty != true {
            for character in characterArray {
                switch character {
                case "a", "e", "i", "o", "u", "y":
                    score += 2
                default:
                    score += 1
                }
            }
        }
        return score
    }
}

extension Int {
    func half() -> Int {
        return self/2
    }
}

extension Int {
    func isDivisible(by number: Int) -> Bool {
        if self % number == 0 {
            return true
        } else {
            return false
        }
    }
}

extension Int {
    var squared: Int {
        return self*self
    }
}

extension Int {
    var halved: Int {
        return self.half()
    }
}

extension String {
    var unicornLevel: String {
        var unicornScore: String = ""
        var newWord: String = ""
        var wordArray = self.components(separatedBy: " ")
        var characterArray: [Character] = []
        for word in wordArray {
            characterArray = Array(word.characters)
            for character in characterArray {
                if word == wordArray.last {
                    newWord += "🦄"
                } else if character == word.characters.last {
                    newWord += "🦄 "
                } else {
                    newWord += "🦄"
                }
                
            }
            
        }
        unicornScore += "\(newWord)"
        return unicornScore
    }
}




