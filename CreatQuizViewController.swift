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
        
    }
    
    
}
