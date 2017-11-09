//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

// Check out info.plist. To get status bar to "light" check the box under General and modify plist. 2 steps to make it work. 

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Properties
		let allQuestions = QuestionBank()
		var pickedAnswer : Bool = false
	  //this is going to increment and pull the next question from array. 
		var questionNumber : Int = 0
	
	

	
	
	
	  // MARK: - Outlets
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
	
		// MARK: - View Did Load
		override func viewDidLoad() {
        super.viewDidLoad()
				//when the app starts it loads up the first question, sends questionText to questionLabel.
				let firstQuestion = allQuestions.list[0]
					questionLabel.text = firstQuestion.questionText
		
		
        
    }


		// MARK: - Actions
		@IBAction func answerPressed(_ sender: AnyObject) { //attatched to two buttons.
			if sender.tag == 1 {
				pickedAnswer = true
			} else if sender.tag == 2 {
				pickedAnswer = false
			}
			
			checkAnswer()
			questionNumber += 1
			//questionNumber is incremented and is used to grab the next question from array.
			questionLabel.text = allQuestions.list[questionNumber].questionText
			
  
    }
    
    
		// MARK: - Functions
		func updateUI() {
      
    }
    

    func nextQuestion() {
        
    }
    
    
    func checkAnswer() {
			let correctAnswer = allQuestions.list[questionNumber].answer
			
			if correctAnswer == pickedAnswer {
				print("You got it right")
			} else {
				print("You got it wrong")
			}
        
    }
    
    
    func startOver() {
       
    }
	
	
    

    
}





