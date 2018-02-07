//
//  GameViewController.swift
//  GameOfThronesQuizz
//
//  Created by Louis Nicolas Leuillet on 07/02/2018.
//  Copyright © 2018 Louis Nicolas Leuillet. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {

    // VARIABLES
    var currentQuestion = QuestionBank()
    var questionNumber : Int = Int(arc4random_uniform(11))
    var score : Int = 0
    var titleAlert : String = ""
    var questionStep : Int = 1
    var questionHistory = [Int]()
    
    @IBOutlet weak var questionNumberLabel: UILabel!
    @IBOutlet weak var questionNameLabel: UILabel!
    @IBOutlet weak var questionPictureView: UIImageView!
    @IBOutlet weak var buttonALabel: UIButton!
    @IBOutlet weak var buttonBLabel: UIButton!
    @IBOutlet weak var buttonCLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUserInterface() // WE UPDATE FIRST QUESTION
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    @IBAction func bouttonPressed(_ sender: UIButton) {
        
        checkAnswer(sender) // CHECK THE SOLUTION
        
        if questionStep <= 9 {
            
            nextQuestion() // NEXT QUESTION
            
        } else {
            
            switch (score) {
                case 0:
                    titleAlert = "Very very very bad"
                case 1...5:
                    titleAlert = "You don't realy know GOT"
                case 6...8:
                    titleAlert = "Hm... that's great"
                default:
                    titleAlert = "Incredible"
            }
            
            let alert = UIAlertController(title: titleAlert, message: "You had \(score) / 10 !", preferredStyle: .alert)
            
            let alertCommand = UIAlertAction(title: "RETRY", style: .default, handler: { (UIAlertAction) in
                self.start()
            })
            
            alert.addAction(alertCommand)
            
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    
    
    // FUNCTION : CHANGE THE QUESTION
    func nextQuestion() {
        
        repeat {
            questionNumber = Int(arc4random_uniform(UInt32(currentQuestion.list.count))) // WE CHANGE THE QUESTION
        } while (questionHistory.contains(questionNumber))
        
        questionStep += 1
        updateUserInterface() // UPDATE THE INTERFACE
        
    }
    
    // FUNCTION : UPDATE USER INTERFACE
    func updateUserInterface() {
        
        questionHistory.append(questionNumber)
        
        questionNumberLabel.text = "Question \(questionStep) / 10"
        questionNameLabel.text = currentQuestion.list[questionNumber].questionText
        questionPictureView.image = UIImage(named: currentQuestion.list[questionNumber].questionImage)
        
        // SETTING UP RANDOM RESPONSES
        let number : Int = Int(arc4random_uniform(3))
        
        switch number {
            // ANSWER POSITION 1
            case 0 :
                buttonALabel.setTitle(currentQuestion.list[questionNumber].questionAnswer, for: .normal)
                buttonBLabel.setTitle(currentQuestion.list[questionNumber].questionFalseA, for: .normal)
                buttonCLabel.setTitle(currentQuestion.list[questionNumber].questionFalseB, for: .normal)
            // ANSWER POSITION 2
            case 1 :
                buttonALabel.setTitle(currentQuestion.list[questionNumber].questionFalseA, for: .normal)
                buttonBLabel.setTitle(currentQuestion.list[questionNumber].questionAnswer, for: .normal)
                buttonCLabel.setTitle(currentQuestion.list[questionNumber].questionFalseB, for: .normal)
            // ANSWER POSITION 3
            default:
                buttonALabel.setTitle(currentQuestion.list[questionNumber].questionFalseA, for: .normal)
                buttonBLabel.setTitle(currentQuestion.list[questionNumber].questionFalseB, for: .normal)
                buttonCLabel.setTitle(currentQuestion.list[questionNumber].questionAnswer, for: .normal)
        }
        
    }
    
    // FUNCTION : VERIFY ANSWER USER
    func checkAnswer(_ sender: UIButton) {
        
        if sender.titleLabel!.text! == currentQuestion.list[questionNumber].questionAnswer {
            score += 1
            ProgressHUD.showSuccess("Correct")
        } else {
            ProgressHUD.showError("Wrong")
        }
        
    }
    
    // FUNCTION : START
    func start() {
        questionNumber = 0 // QUESTION
        score = 0 // SCORE
        questionStep = 1 // STEP
        questionHistory.removeAll() // DELETE ALL THE ELEMENTS
        updateUserInterface() // UPDATE THIS NEW VALUES
    }

}
