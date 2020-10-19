//
//  Anime.swift
//  BokuNoList
//
//  Created by Vitor Bryan on 19/10/20.
//  Copyright © 2020 Vitor Bryan. All rights reserved.
//

import Foundation
import CoreData

class Anime: NSManagedObject {
    @NSManaged public var title: String?
    @NSManaged public var year: NSNumber?
    @NSManaged public var synopsis: String?
    @NSManaged public var details: String?
    
}
