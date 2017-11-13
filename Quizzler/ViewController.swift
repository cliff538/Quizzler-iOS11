//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

// Check out info.plist. To get status bar to "light" check the box under General and modify plist. 2 steps to make it work.
// Had to use Menu -> Product -> Clean to get code to work on the closure under nextQuestion() UIAlertAction.

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
		let allQuestions = QuestionBank()
		var pickedAnswer : Bool = false
		var questionNumber : Int = 0 //this is going to increment and pull the next question from array.
		var score = 0 
	
	
		// MARK: - Outlets
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
	
		// MARK: - View Did Load
		override func viewDidLoad() {
        super.viewDidLoad()
			
				nextQuestion() //clean and simple. see below for long handed way.
			
			//when the app starts it loads up the first question, sends questionText to questionLabel.
					//this is one way to do it. but, basically this is the nextQuestion function.
					/* let firstQuestion = allQuestions.list[0]
					questionLabel.text = firstQuestion.questionText */
		}


		// MARK: - Actions
	
		@IBAction func answerPressed(_ sender: AnyObject) { //attatched to two buttons in UI, "True" with tag1 and "False" with tag2.
			if sender.tag == 1 {
				pickedAnswer = true
			} else if sender.tag == 2 {
				pickedAnswer = false
			}
			
			checkAnswer()
			questionNumber += 1
			nextQuestion()
		}
    
    
		// MARK: - Functions
	
	func updateUI() {
		scoreLabel.text = "Score: \(score)"
		progressLabel.text = "\(questionNumber + 1) / 13"
		progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questionNumber + 1)
      
    }
    

    func nextQuestion() {
			
			if questionNumber <= 12 {
			//questionNumber is incremented and is used to grab the next question from array.
			questionLabel.text = allQuestions.list[questionNumber].questionText
				
			updateUI()
				
			} else {
				let alert = UIAlertController(title: "Awesome", message: "You've finished all the questions, do you want to try again?", preferredStyle: .alert)
				
				let restartAction = UIAlertAction(title: "Restart", style: .default, handler:
				{ (UIAlertAction) in
					self.startOver() //this is a closure. You have to use self here before the function. the "in" tips you off. You are "in" a closure.
				})
				
				alert.addAction(restartAction)
				present(alert, animated: true, completion: nil)
			}
        
    }
    
    
    func checkAnswer() {
			let correctAnswer = allQuestions.list[questionNumber].answer
			
			if correctAnswer == pickedAnswer {
				
				ProgressHUD.showSuccess("Correct")
				print("You got it right")
				score += 1
			} else {
				
				ProgressHUD.showError("Wrong!")
				print("You got it wrong")
			}
        
    }
    
    
    func startOver() {
			
			questionNumber = 0
			score = 0
			nextQuestion()
       
    }
	
	
    

    
} //viewController





