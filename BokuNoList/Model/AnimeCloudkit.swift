//
//  AnimeCloudkit.swift
//  BokuNoList
//
//  Created by Vitor Bryan on 26/10/20.
//  Copyright © 2020 Vitor Bryan. All rights reserved.
//

import Foundation
import UIKit
import CloudKit

class Animes {
    
    static let recordType = "Anime"
    private let idAnime: CKRecord.ID
    let title: String
    let details: String
    let rating: String
    let synopsis: String
    let coverImage: UIImage
    let detailImage: UIImage
    
    init?(record: CKRecord) {
        guard let title = record["title"] as? String,
              let details = record["details"] as? String,
              let rating = record["rating"] as? String,
              let synopsis = record["synopsis"] as? String,
              let coverImage = record["coverImage"] as? CKAsset,
              let detailImage = record["detailImage"] as? CKAsset else { return nil }
        idAnime = record.recordID
        self.title = title
        self.details = details
        self.rating = rating
        self.synopsis = synopsis
        self.coverImage = coverImage.image!
        self.detailImage = detailImage.image!
    }
}
