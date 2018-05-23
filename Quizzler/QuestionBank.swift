//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Veselin Minchev on 21.03.18 г..
//  Copyright © 2018 г. Veselin Minchev. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init() {
        // Creating a quiz item and appending it to the list
        let item = Question(text: "България е основана през 681 година.", correctAnswer: true)
        
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(text: "България е единствената държава, която не си е сменяла името след основаването си.", correctAnswer: true))
        
        list.append(Question(text: "Най-високият връх на Балканите е вр. Мусала", correctAnswer: true))
        
        list.append(Question(text: "Румен Радев е президент на България.", correctAnswer: true))
        
        list.append(Question(text: "Велико Търново е старата столица на България.", correctAnswer: true))
        
        list.append(Question(text: "Пловдив е настоящата столица на България.", correctAnswer: false))
        
        list.append(Question(text: "В Република България, пушенето на марихуана е законно.", correctAnswer: false))
        
        list.append(Question(text: "България не е част от ЕС.", correctAnswer: false))
        
        list.append(Question(text: "Гърция, Турция, Румъния, Македония и Сърбия са съседни държави на България.", correctAnswer: true))
        
        list.append(Question(text: "Григор Димитров е най-добрият ни тенесист", correctAnswer: true))
        
        list.append(Question(text: "В България живеят лъвове", correctAnswer: false))
        
        list.append(Question(text: "Атланстическият океан граничи с България", correctAnswer: false))
        
        list.append(Question(text: "Българското кисело мляко има бактерията лактосбацилус булгарикус", correctAnswer: true))
    }
}
