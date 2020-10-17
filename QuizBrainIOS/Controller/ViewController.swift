//
//  ViewController.swift
//  QuizBrainIOS
//
//  Created by Yasin AKCA on 17.10.2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        
        if quizBrain.checkAnswer(userAnswer: sender.currentTitle!) == true{
            trueButton.backgroundColor = UIColor.green
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                self.trueButton.backgroundColor = UIColor.clear
            }
        }else{
            falseButton.backgroundColor = UIColor.red
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                self.falseButton.backgroundColor = UIColor.clear
            }
        }
        
        quizBrain.nextQuestion()
        
        updateUI()
    }
    
    func updateUI(){
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
    }
    
}

