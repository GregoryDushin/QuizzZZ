//
//  ViewController.swift
//  QuizzZZ
//
//  Created by Григорий Душин on 08.02.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var trueButton: UIButton!
    @IBOutlet var falseButton: UIButton!
    @IBOutlet var progressBar: UIProgressView!
    @IBOutlet var questionLabel: UILabel!
    
    var quizzBrain = QuizzBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userGotInRight = quizzBrain.checkAnswer(userAnswer: userAnswer)
        
        if userGotInRight {
            sender.backgroundColor = .green
        } else {
                sender.backgroundColor = .red
            }
        
        quizzBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        questionLabel.text = quizzBrain.getQuestionText()
        trueButton.backgroundColor = .clear
        falseButton.backgroundColor = .clear
        progressBar.progress = quizzBrain.getProgress()
    }
    
}

