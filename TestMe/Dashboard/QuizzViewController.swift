//
//  QuizzViewController.swift
//  TestMe
//
//  Created by Home on 5/11/21.
//

import UIKit

class QuizzViewController: UIViewController {

    @IBOutlet weak var Question: UILabel!
    @IBOutlet var background: UIView!
    
    @IBOutlet weak var nextBut: UIButton!
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var A1: UILabel!
    @IBOutlet weak var A2: UILabel!
    @IBOutlet weak var A3: UILabel!
    @IBOutlet weak var A4: UILabel!
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    
    @IBOutlet weak var TypeAnswer: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // Do any additional setup after loading the view.
        
        // Create a gradient layer
        let gradientLayer = CAGradientLayer()
        
        // Set the size of the layer to be equal to the size of the display
        gradientLayer.frame = view.bounds
        
        // Set an array of CGColors to create the gradient
        gradientLayer.colors = [#colorLiteral(red: 0, green: 0.3285208941, blue: 0.5748849511, alpha: 1).cgColor, UIColor(red: 50/255, green: 180/255, blue: 150/255, alpha: 1).cgColor]
        
        // Rasterize this layer to improve perfromance
        gradientLayer.shouldRasterize = true
        
        // Apply the gradient to the background
        background.layer.insertSublayer(gradientLayer, at: 0)
        
        nextBut.layer.cornerRadius = 10.0
        nextBut.layer.cornerCurve = .continuous
    }
    
    override func viewDidAppear(_ animated: Bool) {
//        let data = DBHelper.inst.getAnswers()
//        for a in data{
            
          let quest =  DBHelper.inst.getQuestions()
            for q in quest{
               
              
                

//                {
//                    let quest = [q.q1,q.q2,q.q3,q.q4,q.q5]
//                    Question.text = quest.randomElement()!
                Question.text = q.q1
                    if (Question.text == q.q1){
                        let data = DBHelper.inst.getAnswers()
                        for a in data{
                        if(a.a1 != nil){
                            
                            A1.text = a.a1
                        }
                        A2.text = a.r1
                        A3.text = a.r2
                        A4.text = a.r3
                        }
                    }
                    if (Question.text == q.q2){
                        let data = DBHelper.inst.getAnswers()
                        for a in data{
                        if(a.a2 != nil){
                            A1.text = a.a2
                        }
                        A2.text = a.r4
                        A3.text = a.r5
                        A4.text = a.r6
                        }
                    }
                    if (Question.text == q.q3){
                        let data = DBHelper.inst.getAnswers()
                        for a in data{
                        if(a.a3 != nil){
                            A1.text = a.a3
                        }
                        A2.text = a.r7
                        A3.text = a.r8
                        A4.text = a.r9
                        }
                    }
                    if (Question.text == q.q4){
                        let data = DBHelper.inst.getAnswers()
                        for a in data{
                        if(a.a4 != nil){
                            A1.text = a.a4
                        }
                        A2.text = a.r10
                        A3.text = a.r11
                        A4.text = a.r12
                        }
                    }
                    if (Question.text == q.q5){
                        let data = DBHelper.inst.getAnswers()
                        for a in data{
                        if(a.a5 != nil){
                            A1.text = a.a5
                        }
                        A2.text = a.r13
                        A3.text = a.r14
                        A4.text = a.r15
                        }
                    }
                    
                    if(q.questionType != nil && q.questionType == "mc"){
                        TypeAnswer.isHidden = true
                    }
                    
           
              

            }
          
            
//        }
    }
    var isChecked = false
   var score = 0
    @IBAction func btn1(_ sender: UIButton) {
        if isChecked{
            let da = DBHelper.inst.getQuestions()
            for q in da {
                if (Question.text == q.q3) {
                    score -= 1
                }
            }
            isChecked = false
            let image = UIImage(named: "R")
            sender.setImage(image, for: .normal)
            print(score)
        }
        else{
            
            let da = DBHelper.inst.getQuestions()
            for q in da {
                if (Question.text == q.q3) {
                    score += 1
                }
            }
         
            isChecked = true
            let image = UIImage(named: "R2")
            sender.setImage(image, for: .normal)
            print(score)
        }
      
    }
    
    @IBAction func btn2(_ sender: UIButton) {
        if isChecked{
            let da = DBHelper.inst.getQuestions()
            for q in da {
                if (Question.text == q.q2) {
                    score -= 1
                }
            }
            
            isChecked = false
            let image = UIImage(named: "R")
            sender.setImage(image, for: .normal)
            print(score)
        }
        else{
            let da = DBHelper.inst.getQuestions()
            for q in da {
                if (Question.text == q.q2) {
                    score += 1
                }
                
                
            }
          
            isChecked = true
            let image = UIImage(named: "R2")
            sender.setImage(image, for: .normal)
            print(score)
        }
    }
    @IBAction func btn3(_ sender: UIButton) {
        if isChecked{
            let da = DBHelper.inst.getQuestions()
            for q in da {
                if (Question.text == q.q4) {
                    score -= 1
                }
            }
            
            isChecked = false
            let image = UIImage(named: "R")
            sender.setImage(image, for: .normal)
            print(score)
        }
        else{
            
            let da = DBHelper.inst.getQuestions()
            for q in da {
                if (Question.text == q.q4) {
                    score += 1
                }
            }
            isChecked = true
            let image = UIImage(named: "R2")
            sender.setImage(image, for: .normal)
          print(score)
        }
    }
    @IBAction func btn4(_ sender: UIButton) {
        if isChecked{
            
            let da = DBHelper.inst.getQuestions()
            for q in da {
                if (Question.text == q.q1 || Question.text == q.q5) {
                    score -= 1
                }
               
            }
            isChecked = false
            let image = UIImage(named: "R")
            sender.setImage(image, for: .normal)
            print(score)
        }
        else{
            let da = DBHelper.inst.getQuestions()
            for q in da {
                if (Question.text == q.q1 || Question.text == q.q5) {
                    score += 1
                }
               
            }
          
            isChecked = true
            let image = UIImage(named: "R2")
            sender.setImage(image, for: .normal)
            print(score)
          
        }
    }
    
    var x = 0
    @IBAction func nextQuestion(_ sender: Any) {
        //        let data = DBHelper.inst.getAnswers()
        //        for a in data{
                    
                  let quest =  DBHelper.inst.getQuestions()
                    for q in quest{
                       
                        switch x {
                        case 0:
                            Question.text = q.q1
                            
                            x = 1
                        case 1:
                            
                            Question.text = q.q2
                          
                            x = 2
                        case 2:
                            
                            Question.text = q.q3
                           
                            x = 3
                        case 3:
                           
                            Question.text = q.q4
                            x = 4
                         
                        case 4:
                            
                            Question.text = q.q5
                           
                            x = 4
                        case 5:
                            
                           print(score)
                            x = 6
                        default:
                            print("")
                        }
                        

        //                {
//                            let quest = [q.q1,q.q2,q.q3,q.q4,q.q5]
//                            Question.text = quest.randomElement()!
                           
                            if (Question.text == q.q1){
                                let data = DBHelper.inst.getAnswers()
                                for a in data{
                                    
                                if(a.a1 != nil){
                                    
                                    A4.text = a.a1
                                }
                                A2.text = a.r1
                                A3.text = a.r2
                                A1.text = a.r3
                                }
                            }
                            if (Question.text == q.q2){
                                let data = DBHelper.inst.getAnswers()
                                for a in data{
                                if(a.a2 != nil){
                                    A2.text = a.a2
                                }
                                A1.text = a.r4
                                A3.text = a.r5
                                A4.text = a.r6
                                }
                            }
                            if (Question.text == q.q3){
                                let data = DBHelper.inst.getAnswers()
                                for a in data{
                                if(a.a3 != nil){
                                    A1.text = a.a3
                                }
                                A2.text = a.r7
                                A3.text = a.r8
                                A4.text = a.r9
                                }
                            }
                            if (Question.text == q.q4){
                                let data = DBHelper.inst.getAnswers()
                                for a in data{
                                if(a.a4 != nil){
                                    A3.text = a.a4
                                }
                                A2.text = a.r10
                                A1.text = a.r11
                                A4.text = a.r12
                                }
                            }
                            if (Question.text == q.q5){
                                let data = DBHelper.inst.getAnswers()
                                for a in data{
                                if(a.a5 != nil){
                                    A4.text = a.a5
                                }
                                A2.text = a.r13
                                A3.text = a.r14
                                A1.text = a.r15
                                }
                            }
                            
                            if(q.questionType != nil && q.questionType == "mc"){
                                TypeAnswer.isHidden = true
                            }
                            
                        if(q.questionType != nil && q.questionType == "tp"){
                            A1.isHidden = true
                            A2.isHidden = true
                            A3.isHidden = true
                            A4.isHidden = true
                            TypeAnswer.isHidden = false
                        }
                      

                    }
                  
                    
        //        }
    }

   
}
