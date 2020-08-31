//
//  ApiResponse.swift
//  BokuNoList
//
//  Created by Vitor Bryan on 25/08/20.
//  Copyright © 2020 Vitor Bryan. All rights reserved.
//

import Foundation

struct ApiResponse: Codable {
    let works: [Work]
    
    enum CodingKeys: String, CodingKey {
        case works = "data"
    }
}

struct Work {
    let id: String
    let title: String
    
    enum CodingKeys: CodingKey {
        case id
        case attributes
    }
    
    enum Attributes: String, CodingKey {
        case title = "canonicalTitle"
    }
}

extension Work: Codable {
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decode(String.self, forKey: .id)
        
        let attributes = try values.nestedContainer(keyedBy: Attributes.self, forKey: .attributes)
        title = try attributes.decode(String.self, forKey: .title)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        
        var attributes = container.nestedContainer(keyedBy: Attributes.self, forKey: .attributes)
        try attributes.encode(title, forKey: .title)
    }
}
