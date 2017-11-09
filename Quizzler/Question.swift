//
//  Question.swift
//  Quizzler
//
//  Created by Cliff Gurske on 11/9/17.
//  Copyright © 2017 London App Brewery. All rights reserved.
//

//lighter weight than UIKit. UIKit -> Foundation -> Swift
//for this Model file we don't need the full weight of UIKit.
import Foundation

class Question {
	
	//Properties
	let questionText : String
	let answer : Bool
	
	//Initializer 
	init(text: String, correctAnswer: Bool) {
		questionText = text
		answer = correctAnswer
	}

}


