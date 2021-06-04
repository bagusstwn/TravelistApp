//
//  ContentView.swift
//  TravelistApp
//
//  Created by Bagus setiawan on 03/06/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var feth = ApiServices()
    
    var body: some View {
        NavigationView{
            List{
                ForEach(feth.datatotal, id: \.id){ a in
                    HStack{
                        Image(systemName: "rectangle")
                        VStack(alignment: .leading){
                            Text("\(a.name)")
                                .font(.title)
                                .fontWeight(.bold)
                            Text("\(a.address)")
                                .font(.callout)
                                .foregroundColor(.secondary)
                        }
                        
                        Spacer()
                        HStack{
                            Image(systemName: "heart")
                                .foregroundColor(.red)
                            Text("\(a.like)")
                        }
                        
                    }
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Travelist")
            .navigationBarItems(trailing: Button(action: {}){
                Image(systemName: "person.circle.fill")
            })
        }
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
