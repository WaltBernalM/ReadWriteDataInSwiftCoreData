//
//  Dessert+CoreDataProperties.swift
//  RWDataInCoreData
//
//  Created by Walter Bernal Montero on 06/10/23.
//
//

import Foundation
import CoreData


extension Dessert {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Dessert> {
        return NSFetchRequest<Dessert>(entityName: "Dessert")
    }

    @NSManaged public var name: String?

}

extension Dessert : Identifiable {

}
