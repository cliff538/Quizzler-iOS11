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

	
	
	
	  // MARK: - Outlets
		@IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
	
		// MARK: - View Did Load
		override func viewDidLoad() {
        super.viewDidLoad()
        
    }


		// MARK: - Actions
		@IBAction func answerPressed(_ sender: AnyObject) { //attatched to two buttons.
  
    }
    
    
		// MARK: - Functions
		func updateUI() {
      
    }
    

    func nextQuestion() {
        
    }
    
    
    func checkAnswer() {
        
    }
    
    
    func startOver() {
       
    }
	
	
    

    
}





