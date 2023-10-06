//
//  Location+CoreDataProperties.swift
//  RWDataInCoreData
//
//  Created by Walter Bernal Montero on 06/10/23.
//
//

import Foundation
import CoreData


extension Location {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Location> {
        return NSFetchRequest<Location>(entityName: "Location")
    }

    @NSManaged public var name: String?

}

extension Location : Identifiable {

}
