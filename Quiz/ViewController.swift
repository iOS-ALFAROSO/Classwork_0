//
//  ViewController.swift
//  Quiz
//
//  Created by Alberth Rodriguez on 9/9/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLable: UILabel!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    let question: [String] = ["What is 2 x 2?", "What is 5 - 3?", "What is 5 x 5?"]
    
    let answer: [String] = ["4", "2", "25"]
    
    var currentQuestionIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        questionLable.text = question[currentQuestionIndex]
    }

    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == question.count {
        currentQuestionIndex = 0
        }
        let question: String = question [currentQuestionIndex]
        questionLable.text = question
        answerLabel.text = "???"
    }
    
    
    @IBAction func showAnswer(_ sender: Any) {
        let answer: String = answer[currentQuestionIndex]
        answerLabel.text = answer
    }
}

