//
//  DBHelper.swift
//  TestMe
//
//  Created by Home on 5/10/21.
//

import Foundation
import CoreData
import UIKit
class DBHelper{
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
}
