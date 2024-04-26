//
//  ViewController.swift
//  FlashCards
//
//  Created by Michael Ray Porter, Jr on 3/19/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Question: UILabel!
    @IBOutlet weak var Answer: UILabel!
    
    var questions: [String] = []   // holds the questions
    var answers: [String] = []     // holds the answers
    var QuestionIdx = 0            // current card
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadCards()
        QuestionIdx = 0
        Question.text = questions[QuestionIdx]
        Answer.text = "?????"
    }
    
    //builds the initial stack of cards
    func loadCards() {
        
        questions.append("What's the capital of Japan?")
        answers.append("Tokyo")
        
        questions.append("What's the name of the ship that sank in 1912?")
        answers.append("Titanic")
        
        questions.append("How many ways can you make change for 1 US dollar?")
        answers.append("293")
        
        questions.append("How many compartments are in a cow's stomach?")
        answers.append("4")
        
        questions.append("Which planet rotates clockwise?")
        answers.append("Venus")
        
        questions.append("How many blue stripes are there on the US flag?")
        answers.append("0")
        
        questions.append("Which country held the 2016 Olympics?")
        answers.append("Tokyo")
        
        questions.append("According to Forrest Gump, life is like...")
        answers.append("A box of chocolates")
        
        questions.append("How many bones are there in the human body?")
        answers.append("206")
        
        questions.append("Fe is the chemical symbol for...")
        answers.append("Iron")
        
        questions.append("How many hearts does an octopus have?")
        answers.append("3")
        
        questions.append("What does the E in Chuck E. Cheese stand for?")
        answers.append("Entertainment")
        
        questions.append("Which astrological sign is a crab?")
        answers.append("Cancer")
        
        questions.append("What's the complementary color of green?")
        answers.append("Red")
        
        questions.append("How many elements are on the periodic table?")
        answers.append("118")
        
        questions.append("Which water sport is the official sport for the state of Hawaii?")
        answers.append("Surfing")
    }
    
    @IBAction func NextCard(_ sender: Any) {
        QuestionIdx += 1
        if QuestionIdx == questions.count{
            QuestionIdx = 0
        }
        Question.text = questions[QuestionIdx]
        Answer.text = "?????"
    }
    
    @IBAction func ShowAnswer(_ sender: Any) {
        Answer.text = answers[QuestionIdx]
    }
    
}

