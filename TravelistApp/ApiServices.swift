//
//  ApiServices.swift
//  TravelistApp
//
//  Created by Bagus setiawan on 03/06/21.
//

import Foundation
import SwiftUI
import Combine

extension String{
    func loadImage() -> UIImage{
        do{
            guard let url = URL(string: self) else {
                return UIImage()
            }
            
            let data: Data = try Data(contentsOf: url)
            
            return UIImage(data: data) ?? UIImage()
        }catch{
            print("\(error.localizedDescription)")
        }
        return UIImage()
    }
}

class ApiServices: ObservableObject{
    
    @Published var isLoading = true
    private var url = "https://tourism-api.dicoding.dev/list"
    
    let objectWillChange = ObservableObjectPublisher()
    
    @Published var datatotal  = [Place]() {
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
            
            if let result = result?.places{
                self.isLoading = false
                DispatchQueue.main.async {
                    self.datatotal = result
                }
            }
        }.resume()
    }
}

