//
//  QuizzViewController.swift
//  TestMe
//
//  Created by Home on 5/11/21.
//

import UIKit

class QuizzViewController: UIViewController {

    @IBOutlet weak var Question: UILabel!
    
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var A1: UILabel!
    @IBOutlet weak var A2: UILabel!
    @IBOutlet weak var A3: UILabel!
    @IBOutlet weak var A4: UILabel!
    
    @IBOutlet weak var TypeAnswer: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let data = DBHelper.inst.getAnswers()
        for a in data{
            
          let quest =  DBHelper.inst.getQuestions()
            for q in quest{
               
                print(q.q1!)
                
                if(data != [nil])
                {
                    let quest = [q.q1,q.q2,q.q3,q.q4,q.q5]
                    Question.text = quest.randomElement()!
                   
                    if (Question.text == q.q1){
                        if(a.a1 != nil){
                            
                            A1.text = a.a1
                        }
                        A2.text = a.r1
                        A3.text = a.r2
                        A4.text = a.r3
                    }
                    if (Question.text == q.q2){
                        if(a.a2 != nil){
                            A1.text = a.a2
                        }
                        A2.text = a.r4
                        A3.text = a.r5
                        A4.text = a.r6
                    }
                    if (Question.text == q.q3){
                        if(a.a3 != nil){
                            A1.text = a.a3
                        }
                        A2.text = a.r7
                        A3.text = a.r8
                        A4.text = a.r9
                    }
                    if (Question.text == q.q4){
                        if(a.a4 != nil){
                            A1.text = a.a4
                        }
                        A2.text = a.r10
                        A3.text = a.r11
                        A4.text = a.r12
                    }
                    if (Question.text == q.q5){
                        if(a.a5 != nil){
                            A1.text = a.a5
                        }
                        A2.text = a.r13
                        A3.text = a.r14
                        A4.text = a.r15
                    }
                    
                    if(q.questionType != nil && q.questionType == "mc"){
                        TypeAnswer.isHidden = true
                    }
                    
                }
              

            }
          
            
        }
    }

   
}
