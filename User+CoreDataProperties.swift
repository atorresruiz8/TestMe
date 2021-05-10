//
//  User+CoreDataProperties.swift
//  
//
//  Created by Antonio Torres-Ruiz on 5/10/21.
//
//

import Foundation
import CoreData


extension User {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<User> {
        return NSFetchRequest<User>(entityName: "User")
    }

    @NSManaged public var username: String?
    @NSManaged public var password: String?
    @NSManaged public var blockedStatus: Bool
    @NSManaged public var adminRole: Bool
    @NSManaged public var quizzesTaken: Double
    @NSManaged public var subscriptionStatus: String?
    @NSManaged public var feedback: String?
    @NSManaged public var scoreOne: Double
    @NSManaged public var scoreTwo: Double
    @NSManaged public var scoreThree: Double
    @NSManaged public var scoreFour: Double
    @NSManaged public var userFeedback: Feedback?
    @NSManaged public var userQuiz: Quiz?

}
