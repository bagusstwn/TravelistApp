//
//  DataModel.swift
//  TravelistApp
//
//  Created by Bagus setiawan on 03/06/21.
//

import Foundation

// MARK: - Welcome
struct DataModel: Codable {
    let error: Bool
    let message: String
    let count: Int
    let places: [Place]
}

// MARK: - Place
struct Place: Codable {
    let id: Int
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
