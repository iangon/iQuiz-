//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by Ian on 11/8/16.
//  Copyright © 2016 Ian. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    
    var answerIndex: Int = 0
    var questionIndex = 0
    var realAnswers : Array<Int> = []
    var dataQuestions : Array<String> = []
    var dataAnswers : [[String]] = [[]]
    var question : String = ""
    var userAnswer : String = ""
    var selectedSubject = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        questionLabel.text = question
        
        button1.setTitle(dataAnswers[questionIndex][0], for: .normal)
        button2.setTitle(dataAnswers[questionIndex][1], for: .normal)
        button3.setTitle(dataAnswers[questionIndex][2], for: .normal)
        button4.setTitle(dataAnswers[questionIndex][3], for: .normal)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func firstButtonPressed(_ sender: UIButton) {
        self.userAnswer = sender.currentTitle!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newView = segue.destination as! AnswerViewController
        newView.userAnswer = self.userAnswer
        newView.answerIndex = self.answerIndex
        newView.questionIndex = self.questionIndex
        newView.dataQuestions = self.dataQuestions
        newView.dataAnswers = self.dataAnswers
        newView.realAnswers = self.realAnswers
        newView.selectedSubject = self.selectedSubject
        
        if(segue.identifier == "firstAnswerButton") {
            newView.realAnswer = String(dataAnswers[questionIndex][realAnswers[answerIndex]])
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
