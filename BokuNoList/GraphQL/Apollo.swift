//
//  Apollo.swift
//  BokuNoList
//
//  Created by Vitor Bryan on 05/02/21.
//  Copyright © 2021 Vitor Bryan. All rights reserved.
//

import Foundation
import Apollo

class Network {
    static let shared = Network()
    lazy var apollo = ApolloClient(url: URL(string: "https://graphql.anilist.co/")!)
}
