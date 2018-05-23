//
//  ViewController.swift
//  Quizzler
//
//  Created by Veselin Minchev on 21.03.18 г..
//  Copyright © 2018 г. Veselin Minchev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    


    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     nextQuestion()
        
    }

    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
    
        questionNumber = questionNumber + 1
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1)) {
            self.nextQuestion()
        }
        
    
    }
    
    func updateUI() {
      
        scoreLabel.text = "Точки: \(score)"
        progressLabel.text = "\(questionNumber + 1) / 13"
        
        progressBar.frame.size.width = (view.frame.size.width / 13) *  CGFloat(questionNumber + 1)
        
    }
    
    func nextQuestion() {
        
        if questionNumber <= 12 {
        questionLabel.text = allQuestions.list[questionNumber].questionText
            
            updateUI()
            
            
        }
        else {
            
            
            let alert = UIAlertController(title: "Чудесно!", message: "Вие успешно преминахте през всички въпроси. Вашите точки са \(score). Искате ли да започнете отново?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Рестарт", style: .default, handler: {   (UIAlertAction) in
                self.startOver()
                
            
            })
            
            alert.addAction(restartAction)
            
            present( alert , animated: true, completion: nil)

        
        }
    
    }
    
    
    func checkAnswer() {
        
    let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
           ProgressHUD.showSuccess("Вярно!")
            score = score + 1
        }
            
        else {
            ProgressHUD.showError("Грешно!")
        }
    }
    
    
    func startOver() {
        
        score = 0
        questionNumber = 0
        nextQuestion()
        
       
    }
    

    

}
