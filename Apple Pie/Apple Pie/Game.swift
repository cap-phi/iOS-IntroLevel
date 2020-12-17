//
//  Game.swift
//  Apple Pie
//
//  Created by Tian Wu on 17/12/20.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int8
    var guessedLetters: [Character]
    var formattedWord: String {
        var guessedWord = ""
        for letter in word {
            if guessedLetters.contains(letter) {
                guessedWord.append(String(letter)+" ")
            } else {
                guessedWord.append("_ ")
            }
        }
        return guessedWord
    }
    
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
            print("Wrong guess of \(letter)")
        }
        
    }
}
