//
//  NetworkManager.swift
//  BokuNoList
//
//  Created by Vitor Bryan on 20/08/20.
//  Copyright © 2020 Vitor Bryan. All rights reserved.
//

import Foundation
    
enum ApiEndpoint {
//    case anime = "https://kitsu.io/api/edge/anime", manga = "https://kitsu.io/api/edge/manga"
    case getFeatured
    case getHighestRated
    
    var scheme: String {
        return "https"
    }
    var host: String {
        return "kitsu.io"
    }
    var path: String{
        switch self {
        case .getFeatured:
            return "/api/edge/feature/anime"
    
        case .getHighestRated:
            return "/api/edge/anime?page%5Blimit%5D=5&sort=-average_rating"
        }
    }
    var url: URL? {
        var components = URLComponents()
        components.scheme = self.scheme
        components.host = self.host
        components.path = self.path
        return components.url
    }
//    var urlRequest: URLRequest? {
//        guard let 
//    }
}

class NetworkManager {

    func getFeaturedItens() {
        
        guard let url = urlFromComponents else { fatalError("Deu ruim com a URL")}
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        urlRequest.setValue("application/vnd.api+json", forHTTPHeaderField: "Accept")
        urlRequest.setValue("application/vnd.api+json", forHTTPHeaderField: "Content-Type")
        
        let task = URLSession.shared.dataTask(with: urlRequest) {data, response, error in
            if let data = data {
                do {
                    let response = try JSONDecoder().decode(ApiResponse.self, from: data)
                    print(response.works)
                } catch {
                    print(error)
                }
            }
        }
        task.resume()
    }
    
//    func getFromEndpoint(endpoint: ApiEndpoint, limit: Int = 10, offset: Int = 0) {
//        let url = URL(string: "\(endpoint.rawValue)?page[limit]=\(limit)&page[offset]=\(offset)")!
//        var urlRequest = URLRequest(url: url)
//        urlRequest.httpMethod = "GET"
//        urlRequest.setValue("application/vnd.api+json", forHTTPHeaderField: "Accept")
//        urlRequest.setValue("application/vnd.api+json", forHTTPHeaderField: "Content-Type")
//        let task = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
//            if let data = data {
//                do {
//                    let response = try JSONDecoder().decode(ApiResponse.self, from: data)
//                    print(response.works)
//                } catch {
//                    print(error)
//                }
//            }
//        }
//        task.resume()
//    }

}
