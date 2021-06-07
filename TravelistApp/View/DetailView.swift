//
//  DetailView.swift
//  TravelistApp
//
//  Created by Bagus setiawan on 04/06/21.
//

import SwiftUI

struct DetailView: View {
    
    var dataPlaces: Place
    
    var body: some View {
        ScrollView(.vertical){
            VStack{
                Image(uiImage: "\(dataPlaces.image)".loadImage())
                    .resizable()
                    .frame(width: 365, height: 345)
                    .cornerRadius(20)
                    .scaledToFill()
                Text("\(dataPlaces.address)")
                    .font(.title3)
                    .foregroundColor(.secondary)
                    .padding([.leading, .trailing], 20)
                
                Divider()
                
                HStack{
                    VStack{
                        Image(systemName: "heart")
                            .foregroundColor(.red)
                            .font(.title)
                        Text("Like \(dataPlaces.like)")
                    }
                    .padding(.leading, 75)
                    .padding([.top, .bottom], 10)
                    
                    Spacer()
                    
                    HStack {
                        Divider()
                    }.frame(height: 75)
                    
                    Spacer()
                    
                    VStack{
                        NavigationLink(destination: LocationMap(dataPlaces: dataPlaces)){
                            Image(systemName: "location")
                                .font(.title)
                        }
                        Text("Location")
                    }
                    .padding(.trailing, 75)
                    .padding([.top, .bottom], 5)
                }
                
                Divider()
                
                VStack(alignment: .leading){
                    HStack{
                        Text("Deskripsi")
                            .font(.title2)
                            .fontWeight(.medium)
                            .padding([.leading], 20)
                            .padding([.bottom], 10)
                    }
                    
                    Text("\(dataPlaces.placeDescription)")
                        .multilineTextAlignment(.leading)
                        .padding([.leading,.trailing], 20)
                }
            }
        }
        .navigationTitle("\(dataPlaces.name)")
    }
}

