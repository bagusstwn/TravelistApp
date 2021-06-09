//
//  NetworkManager.swift
//  TravelistApp
//
//  Created by Bagus setiawan on 03/06/21.
//

import Foundation
import SwiftUI
import Combine

class NetworkManager: ObservableObject {
    
    @Published var isLoading = true
    private var url = "https://tourism-api.dicoding.dev/list"
    
    let objectWillChange = ObservableObjectPublisher()
    
    @Published var allDataPlace = [Place]() {
        willSet {
            objectWillChange.send()
        }
    }
    
    init() {
        guard let url = URL(string: url) else {
            fatalError("INVALID URL")
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data, error == nil else {
                return
            }
            
            let result = try? JSONDecoder().decode(DataModel.self, from: data)
            
            if let result = result?.places {
                DispatchQueue.main.async {
                    self.isLoading = false
                    self.allDataPlace = result
                }
            }
        }.resume()
    }
}

