//
//  Quiz+CoreDataProperties.swift
//  
//
//  Created by Antonio Torres-Ruiz on 5/10/21.
//
//

import Foundation
import CoreData


extension Quiz {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Quiz> {
        return NSFetchRequest<Quiz>(entityName: "Quiz")
    }

    @NSManaged public var a1: String?
    @NSManaged public var a2: String?
    @NSManaged public var a3: String?
    @NSManaged public var a4: String?
    @NSManaged public var a5: String?
    @NSManaged public var category: String?
    @NSManaged public var correct1: Bool
    @NSManaged public var correct2: Bool
    @NSManaged public var correct3: Bool
    @NSManaged public var correct4: Bool
    @NSManaged public var correct5: Bool
    @NSManaged public var name: String?
    @NSManaged public var score: Double
    @NSManaged public var userQuiz: Account?

}
