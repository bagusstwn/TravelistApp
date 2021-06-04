//
//  ApiServices.swift
//  TravelistApp
//
//  Created by Bagus setiawan on 03/06/21.
//

import Foundation
import SwiftUI
import Combine

class ApiServices: ObservableObject{
    
    private var url = "https://tourism-api.dicoding.dev/list"
    
    //@Published var showData = [Place]()
    
    let objectWillChange = ObservableObjectPublisher()
    
    @Published var datatotal  = [Place]() {
        willSet {
            objectWillChange.send()
        }
    }
    
    @Published var isLoading = true
    
    
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
                self.isLoading = false
                DispatchQueue.main.async {
                    self.datatotal = result
                }
            }
        }.resume()
    }
    
    //  func getData(){
    //        guard let url = URL(string: url) else {return}
    //        URLSession.shared.dataTask(with: url) { (data, _, _) in
    //            let users = try! JSONDecoder().decode([Place].self, from: data!)
    //            print(users)
    //
    //            DispatchQueue.main.async {
    //               self.showData = users
    //            }
    //        }
    //        .resume()
    //    }
    
    
    
    //    func getUsers(completion:@escaping (DataModel) -> ()) {
    //           guard let url = URL(string: "https://tourism-api.dicoding.dev/list") else { return }
    //           URLSession.shared.dataTask(with: url) { (data, _, _) in
    //            let users = try! JSONDecoder().decode(DataModel.self, from: data!)
    //            for a in users.places{
    //                print(a.name)
    //            }
    //
    //               DispatchQueue.main.async {
    //                completion(users)
    //               }
    //           }
    //           .resume()
    //       }
}

