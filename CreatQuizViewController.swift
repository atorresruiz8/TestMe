//
//  CreatQuizViewController.swift
//  TestMe
//
//  Created by Home on 5/11/21.
//

import UIKit

class CreatQuizViewController: UIViewController {
    @IBOutlet weak var category: UITextField!
    @IBOutlet weak var question1: UITextField!
    
    @IBOutlet weak var question5: UITextField!
    @IBOutlet weak var question4: UITextField!
    @IBOutlet weak var question3: UITextField!
    @IBOutlet weak var question2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   
    @IBAction func saveQuestions(_ sender: Any) {
        let dic = ["q1" : question1.text!, "q2" : question2.text!,"q3" : question3.text!,"q4" : question4.text!,"q5" : question5.text!,"category" : category.text!]
        DBHelper.inst.addQuestions(object: dic)
//        let dic = ["question" : question1.text!, "category" : category.text!]
//        DBHelper.inst.addQuestions(object: dic)
//
//        let dic2 = ["question" : question2.text!, "category" : category.text!]
//        DBHelper.inst.addQuestions(object: dic2)
//
//        let dic3 = ["question" : question3.text!, "category" : category.text!]
//        DBHelper.inst.addQuestions(object: dic3)
//
//        let dic4 = ["question" : question4.text!, "category" : category.text!]
//        DBHelper.inst.addQuestions(object: dic4)
//
//        let dic5 = ["question" : question5.text!, "category" : category.text!]
//        DBHelper.inst.addQuestions(object: dic5)
        
    }
    
    
}
