//
//  NetworkManager.swift
//  BokuNoList
//
//  Created by Vitor Bryan on 20/08/20.
//  Copyright © 2020 Vitor Bryan. All rights reserved.
//

import Foundation

class NetworkManager {
    static func takeData(completion:((_ json: Data?) -> Void)) {
        completion(Data())
    }
}
