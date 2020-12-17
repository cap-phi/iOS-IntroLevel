//
//  ViewController.swift
//  Apple Pie
//
//  Created by Tian Wu on 17/12/20.
//

import UIKit

class ViewController: UIViewController {
    var listOfWords: [String] = ["swift", "glorious", "incandescent", "bug", "programme"]
    let incorrectMovesAllowed: Int8 = 7
    var totalWins = 0 {
        didSet {
            newRound()
        }
    }
    var totalLosses = 0 {
        didSet {
            newRound()
        }
    }
    var currentGame: Game!
    

    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }


    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letter: Character = Character(sender.title(for: .normal)!.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateGameState()
    }
    
    func newRound() {
        if !listOfWords.isEmpty {
            let newWord = listOfWords.removeFirst()
            currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [])
            updateLabelUI()
            update26LettersUI(true)
        } else {
            update26LettersUI(false)
        }
        
        
    }
    
    func updateLabelUI() {
        scoreLabel.text = "Wins: \(totalWins) | Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
        print(currentGame.guessedLetters)
        correctWordLabel.text = currentGame.formattedWord
    }
    
    func updateGameState() {
        if currentGame.incorrectMovesRemaining == 0 {
            totalLosses += 1
        } else if currentGame.word == currentGame.formattedWord.split(separator: " ").joined(){
            totalWins += 1
        }
        // update Labels anyway(win/loss/still going)
        updateLabelUI()
    }
    
    func update26LettersUI(_ enable: Bool) {
        for button in letterButtons {
            button.isEnabled = enable
        }
        
    }
}

