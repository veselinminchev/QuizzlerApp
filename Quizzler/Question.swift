//
//  Question.swift
//  Quizzler
//
//  Created by Veselin Minchev on 21.03.18 г..
//  Copyright © 2018 г. Veselin Minchev. All rights reserved.
//

import Foundation
class Question {
    let questionText: String
    let answer: Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
    
}
