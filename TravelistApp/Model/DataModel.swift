//
//  DataModel.swift
//  TravelistApp
//
//  Created by Bagus setiawan on 03/06/21.
//

import Foundation

// MARK: - DataModel
struct DataModel: Codable {
    let error: Bool
    let message: String
    let count: Int
    let places: [Place]
    
    enum CodingKeys: String, CodingKey {
        case error = "error"
        case message = "message"
        case count = "count"
        case places = "places"
    }
}

// MARK: - Place
struct Place: Codable, Identifiable {
    var id: Int
    let name, placeDescription, address: String
    let longitude, latitude: Double
    let like: Int
    let image: String

    enum CodingKeys: String, CodingKey {
        case id, name
        case placeDescription = "description"
        case address, longitude, latitude, like, image
    }
}
