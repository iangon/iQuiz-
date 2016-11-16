//
//  AnswerViewController.swift
//  iQuiz
//
//  Created by Ian on 11/10/16.
//  Copyright © 2016 Ian. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    
    @IBOutlet weak var backToSubjects: UIButton!
    @IBOutlet weak var nextQuestion: UIButton!
    @IBOutlet weak var answerLabel: UILabel!
    var realAnswer = ""
    var questionIndex = 0
    var userAnswer : String = ""
    var answerIndex: Int = 0;
    var realAnswers : Array<Int> = []
    var dataQuestions : Array<String> = []
    var dataAnswers : [[String]] = [[]]
    var selectedSubject = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        answerLabel.text = realAnswer
        
        if questionIndex >= dataQuestions.count - 1 {
            // hide next question 
            nextQuestion.isHidden = true
            
            //show back to subjects
            backToSubjects.isHidden = false
        } else {
            nextQuestion.isHidden = false
            backToSubjects.isHidden = true  
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toQuestion" {
 
            let newView = segue.destination as! QuestionViewController
            let button = sender as! UIButton    
            newView.selectedSubject = selectedSubject
            newView.dataQuestions = dataQuestions
            newView.realAnswers = realAnswers
            newView.dataAnswers = dataAnswers
            newView.answerIndex = answerIndex
            
            newView.questionIndex = questionIndex+1

            
            if newView.questionIndex < newView.dataQuestions.count - 1 {
                 newView.question = newView.dataQuestions[newView.questionIndex]
            }
        }
        
        if segue.identifier == "toSubjects" {

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
