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
                HStack{
                    Text("\(dataPlaces.address)")
                        .font(.callout)
                        .foregroundColor(.secondary)
                        .padding([.leading], 20)
                    Spacer()
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                        .padding([.top], 20)
                    Text("\(dataPlaces.like)")
                        .padding([.trailing, .top], 20)
                }
                Divider()
                
                VStack(alignment: .leading){
                    Text("Deskripsi")
                        .font(.title2)
                        .fontWeight(.medium)
                        .padding([.leading], 20)
                        .padding([.bottom], 10)
                    Divider()
                    Text("\(dataPlaces.placeDescription)")
                        .multilineTextAlignment(.leading)
                        .padding([.leading,.trailing], 20)
                    
                }
            }
        }
        .navigationTitle("\(dataPlaces.name)")
    }
}

