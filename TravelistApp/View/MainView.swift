//
//  MainView.swift
//  TravelistApp
//
//  Created by Bagus setiawan on 03/06/21.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var fetchData = NetworkManager()
    
    var body: some View {
        GeometryReader { geometry in
            NavigationView{
                ZStack{
                    List{
                        ForEach(fetchData.allDataPlace, id: \.id){ dataPlace in
                            ZStack{
                                RectangleBackgroundView()
                                HStack{
                                    Image(uiImage: "\(dataPlace.image)".loadImage())
                                        .resizable()
                                        .frame(width: 93, height: 93, alignment: .center)
                                        .cornerRadius(10)
                                    
                                    VStack(alignment: .leading){
                                        Text("\(dataPlace.name)")
                                            .font(.title2)
                                            .fontWeight(.bold)
                                            .lineLimit(1)
                                        Text("\(dataPlace.address)")
                                            .font(.callout)
                                            .foregroundColor(.secondary)
                                    }
                                    Spacer()
                                    HStack{
                                        Image(systemName: "heart")
                                            .foregroundColor(.red)
                                            .padding([.top], 50)
                                        Text("\(dataPlace.like)")
                                            .padding([.top], 50)
                                            .padding([.trailing], 20)
                                    }
                                }
                            }
                            .overlay(NavigationLink(destination: DetailView(dataPlaces: dataPlace)){
                                EmptyView()
                            }
                            .opacity(0))
                        }
                        .padding([.leading, .trailing], 20)
                        .padding([.bottom, .top], 10)
                        .listRowInsets(EdgeInsets())
                        .background(Color(UIColor.systemBackground))
                    }
                    
                    .listStyle(InsetListStyle())
                    .navigationTitle("Travelist")
                    .navigationBarItems(trailing: NavigationLink(destination: ProfileView()) {
                        Image(systemName: "person.circle.fill")
                            .font(.title)
                    })
                    
                    if(fetchData.isLoading){
                        VStack(alignment: .center){
                            IndicatorView()
                        }
                        .padding()
                        .cornerRadius(20)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
