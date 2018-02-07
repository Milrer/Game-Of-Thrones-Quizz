//
//  Question.swift
//  GameOfThronesQuizz
//
//  Created by Louis Nicolas Leuillet on 07/02/2018.
//  Copyright © 2018 Louis Nicolas Leuillet. All rights reserved.
//

import Foundation

// A SIMPLE QUESTION
// TO HAVE A STRUCTURE
// QUESTION / ANSWER

class Question {
    
    // ATRIBUTES
    let questionText : String
    let questionImage : String
    let questionAnswer : String
    let questionFalseA : String
    let questionFalseB : String
    
    // CONSTRUCTOR
    init(text: String, image: String = "askEmptyQuestion", answer: String, falseA: String, falseB: String) {
        questionText = text
        questionImage = image
        questionAnswer = answer
        questionFalseA = falseA
        questionFalseB = falseB
    }
    
}
