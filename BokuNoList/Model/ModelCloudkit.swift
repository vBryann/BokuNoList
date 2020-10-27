//
//  ModelCloudkit.swift
//  BokuNoList
//
//  Created by Vitor Bryan on 26/10/20.
//  Copyright © 2020 Vitor Bryan. All rights reserved.
//

import Foundation
import UIKit
import CloudKit

class ModelCloudKit {
    let container: CKContainer
    let publicDatabase: CKDatabase
    
    static var currentModel = ModelCloudKit()
    init() {
        container = CKContainer(identifier: "iCloud.BokuNoList")
        publicDatabase = container.publicCloudDatabase
    }
    
    func fetchAnimes (_ completion: @escaping (Result<[Animes], Error>) -> Void) {
        let predicate = NSPredicate(value: true)
        let query = CKQuery(recordType: "Anime", predicate: predicate)
        
        publicDatabase.perform(query, inZoneWith: CKRecordZone.default().zoneID) { results, errors in
            
            if let error = errors {
                DispatchQueue.main.async {
                    completion(.failure(error))
                }
            }
            
            guard let result = results else { return }
            let animes = result.compactMap {
                Animes.init(record: $0)
            }
            
            DispatchQueue.main.async {
                completion(.success(animes))
            }
        }
    }
    
}
// Extension para converter o tipo CKAsset recebido do CloudKit para UIImage
extension CKAsset {
    var image: UIImage? {
        guard let data = try? Data(contentsOf: fileURL!) else { return nil }
        guard let image = UIImage(data: data) else { return nil }
        return image
    }
}
