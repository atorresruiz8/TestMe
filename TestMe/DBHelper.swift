//
//  DBHelper.swift
//  TestMe
//
//  Created by Antonio Torres-Ruiz on 5/10/21.
//

import Foundation
import UIKit
import CoreData

class DBHelper {
    static var inst = DBHelper()
    
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    
    func addUser(object : [String:String]) { // adds the username and login info to the core data
        let user = NSEntityDescription.insertNewObject(forEntityName: "Account", into: context!) as! Account
        user.username = object["username"]
        user.password = object["password"]
        user.blockedStatus = false
        user.subscriptionStatus = "none"
        user.adminRole = false
        user.feedback = ""
        user.quizzesTaken = 0.0
        user.scoreOne = 0.0
        user.scoreTwo = 0.0
        user.scoreThree = 0.0
        user.scoreFour = 0.0

        do {
            try context?.save()
            print("User created with username:", user.username!, "and password:", user.password!)
        } catch {
            print("Account not created.")
        }
    }
    
    func getAccounts()->[Account] { // checks through all of the saved users, used primarily to verify login information
        var a = [Account]()
        let fetchReq = NSFetchRequest<NSFetchRequestResult>(entityName: "Account")
        do {
            a = try context?.fetch(fetchReq) as! [Account]
        } catch {
            print("Could not find user.")
        }
        
        return a
    }
    
    func getOneAccount (username : String)-> Account { // checks for one specific instance of account credentials to see if it exists in coredata
        var a : Account?
        let fetchReq = NSFetchRequest<NSFetchRequestResult>(entityName: "Account")
        fetchReq.predicate = NSPredicate(format: "username == %@", username)
        
        fetchReq.fetchLimit = 1
        do {
            let req = try context?.fetch(fetchReq) as! [Account]
            if(req.count != 0){
                a = req.first!
            }
            else { // Account data doesn't exist
                print("Account data not found.")
            }
        }
        catch {
            print("Error.")
        }
        
        return a!
    }
    
    func wipeAccounts() { // wipes the core data clean for accounts
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Account")
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)
        
        let persistentContainer = (UIApplication.shared.delegate as! AppDelegate).persistentContainer
        
        do {
            try persistentContainer.viewContext.execute(deleteRequest)
            print("Everything is reset.")
        } catch let error as NSError {
            print(error)
        }
    }
    
    func addCurrUser(object: String) { // adds a current user object to the coredata
        let currUser = NSEntityDescription.insertNewObject(forEntityName: "CurrentUser", into: context!) as! CurrentUser
        currUser.username = object
        
        do {
            try context?.save()
            print("Current user is", currUser.username!)
        } catch {
            print("Username not passed properly.")
        }
    }
    //add questions to database
    func addQuestions(object : [String:String]) {
        let quiz = NSEntityDescription.insertNewObject(forEntityName: "AvailableQuiz", into: context!) as! AvailableQuiz
        quiz.q1 = object["q1"]
        quiz.q2 = object["q2"]
        quiz.q3 = object["q3"]
        quiz.q4 = object["q4"]
        quiz.q5 = object["q5"]
        quiz.category = object["category"]
        do {
            try context?.save()
            //print(quiz.q1!)
        } catch {
            print("Questions not created.")
        }
    }
    
    func getQuestions()->[AvailableQuiz] { // checks through all of the saved users, used primarily to verify login information
        var a = [AvailableQuiz]()
        let fetchReq = NSFetchRequest<NSFetchRequestResult>(entityName: "AvailableQuiz")
        do {
            a = try context?.fetch(fetchReq) as! [AvailableQuiz]
        } catch {
            print("Could not find user.")
        }
        
        return a
    }
    
    func getOneQuestion (q1 : String)-> AvailableQuiz { // checks for one specific instance of account credentials to see if it exists in coredata
        var a : AvailableQuiz?
        let fetchReq = NSFetchRequest<NSFetchRequestResult>(entityName: "AvailableQuiz")
        fetchReq.predicate = NSPredicate(format: "q1 == %@", q1)
        
        fetchReq.fetchLimit = 1
        do {
            let req = try context?.fetch(fetchReq) as! [AvailableQuiz]
            if(req.count != 0){
                a = req.first!
            }
            else { // Account data doesn't exist
                print("Quiz questions not found.")
            }
        }
        catch {
            print("Error.")
        }
        
        return a!
    }
    
    func getLastOne()->[AvailableQuiz] {
        var aq = [AvailableQuiz]()
        let fetchReq = NSFetchRequest<NSFetchRequestResult>(entityName: "AvailableQuiz")
        
        // add sort descriptor
        let sd = NSSortDescriptor(key: "question", ascending: false)
        fetchReq.sortDescriptors = [sd]
        fetchReq.fetchLimit = 1
        
        do {
            aq = try context!.fetch(fetchReq) as! [AvailableQuiz]
            
            for record in aq {
                print(aq)
            }
        } catch {
            print(error)
        }
        
        return aq
    }
    
    func wipeActiveQuiz() { // wipes the core data clean
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "AvailableQuiz")
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)
        
        let persistentContainer = (UIApplication.shared.delegate as! AppDelegate).persistentContainer
        
        do {
            try persistentContainer.viewContext.execute(deleteRequest)
            print("Everything is reset.")
        } catch let error as NSError {
            print(error)
        }
    }
    
    func addAnswerss(object : [String:String]) { // adds the username and login info to the core data
        let answer = NSEntityDescription.insertNewObject(forEntityName: "Quiz", into: context!) as! Quiz
        answer.a1 = object["a1"]
        answer.a2 = object["a2"]
        answer.a3 = object["a3"]
        answer.a4 = object["a4"]
        answer.a5 = object["a5"]
       // answer.category = object["category"]
        do {
            try context?.save()
            
        } catch {
            print("Answers not created.")
        }
    }
    func getAnswers()->[Quiz] { // checks through all of the saved users, used primarily to verify login information
        var a = [Quiz]()
        let fetchReq = NSFetchRequest<NSFetchRequestResult>(entityName: "Quiz")
        do {
            a = try context?.fetch(fetchReq) as! [Quiz]
        } catch {
            print("Could not find Answer.")
        }
        
        return a
    }
}
