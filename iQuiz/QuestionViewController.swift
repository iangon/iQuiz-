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
    var answerIndex: Int = 0 ;

    var question : String = ""
    
    var dataMathAnswers : Array<String> = []
    var userAnswer : String = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        questionLabel.text = question
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
        newView.answerIndex = answerIndex
        
        if(segue.identifier == "firstAnswerButton") {
            newView.answerLabel?.text = "Actual Answer"
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
