//
//  Anime+CoreDataProperties.swift
//  BokuNoList
//
//  Created by Vitor Bryan on 20/10/20.
//  Copyright © 2020 Vitor Bryan. All rights reserved.
//
//

import Foundation
import CoreData

extension Anime {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Anime> {
        return NSFetchRequest<Anime>(entityName: "Anime")
    }

    @NSManaged public var title: String?
    @NSManaged public var synopsis: String?
    @NSManaged public var details: String?

}

extension Anime: Identifiable {

}
