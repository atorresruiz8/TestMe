//
//  CreateanswersViewController.swift
//  TestMe
//
//  Created by Home on 5/11/21.
//

import UIKit

class CreateanswersViewController: UIViewController {

    @IBOutlet weak var question1: UILabel!
    
    @IBOutlet weak var question2: UILabel!
    @IBOutlet weak var question3: UILabel!
    @IBOutlet weak var question4: UILabel!
    @IBOutlet weak var question5: UILabel!
    
    @IBOutlet weak var categoryLB: UILabel!
    
    @IBOutlet weak var answer1: UITextField!
    @IBOutlet weak var answer2: UITextField!
    @IBOutlet weak var answer3: UITextField!
    @IBOutlet weak var answer4: UITextField!
    @IBOutlet weak var answer5: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            
    }
    
    @IBAction func submitAnswers(_ sender: Any) {
     
        
        let dic = ["a1" : answer1.text!, "a2" : answer2.text!, "a3" : answer3.text!, "a4" : answer4.text!, "a5" : answer5.text!]
        DBHelper.inst.addAnswerss(object: dic)
    }
    
    @IBAction func deleteQuiz(_ sender: Any) {
        DBHelper.inst.wipeActiveQuiz()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let data = DBHelper.inst.getQuestions()
        for a in data{
            question1.text = a.q1!
            question2.text = a.q2!
            question3.text = a.q3!
            question4.text = a.q4!
            question5.text = a.q5!
            categoryLB.text = a.category!
        }
    }
    
}
