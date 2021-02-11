//
//  ExplorerViewModel.swift
//  BokuNoList
//
//  Created by Vitor Bryan on 08/02/21.
//  Copyright © 2021 Vitor Bryan. All rights reserved.
//

import Foundation

protocol ExplorerViewModelProtocol {
    func getAnime()
    var dataPopular: Observable<[Media]> { get set }
    var dataTrending: Observable<[Media]> { get set }
}

class ExplorerViewModel: ExplorerViewModelProtocol {
    var dataPopular: Observable<[Media]> = Observable([])
    var dataTrending: Observable<[Media]> = Observable([])
    
    init() {
    }
    
    func getAnime() {
        Network.shared.apollo.fetch(query: FetchQuery()) { result in
            switch result {
            case .success(let graphQLResult):
                DispatchQueue.main.async {
                    if let data = graphQLResult.data {
                        self.dataTrending.value = (data.trending?.media?.compactMap({$0?.fragments.media}))!
                        self.dataPopular.value = (data.popular?.media?.compactMap({$0?.fragments.media}))!
                    }
                }
            case .failure(let error):
                print(error)
            }
        }
        
    }
}
