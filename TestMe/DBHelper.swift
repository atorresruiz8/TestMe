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
                // if this breaks try:
                // a = req.first as! Account
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
    
}
