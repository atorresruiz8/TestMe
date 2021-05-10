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
            print("data not saved")
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
    
    }
