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
        GeometryReader { geometry in
            NavigationView{
                List{
                    ForEach(feth.datatotal, id: \.id){ a in
                        ZStack{
                            RectangleBG()
                            HStack{
                                Image(uiImage: "\(a.image)".loadImage())
                                    .resizable()
                                    .frame(width: 93, height: 92, alignment: .center)
                                    .cornerRadius(10)
                                
                                VStack(alignment: .leading){
                                    Text("\(a.name)")
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .lineLimit(1)
                                    Text("\(a.address)")
                                        .font(.callout)
                                        .foregroundColor(.secondary)
                                }
                                Spacer()
                                HStack{
                                    Image(systemName: "heart.fill")
                                        .foregroundColor(.red)
                                        .padding([.top], 50)
                                    Text("\(a.like)")
                                        .padding([.top], 50)
                                        .padding([.trailing], 20)
                                }
                            }
                        }
                        .overlay(NavigationLink(destination: DetailView(a: a)){
                            EmptyView()
                        }
                        .opacity(0)
                        )
                    }
                    .padding([.leading, .trailing], 20)
                    .padding([.bottom, .top], 10)
                    .listRowInsets(EdgeInsets())
                    .background(Color(UIColor.systemBackground))
                    
                    if(feth.isLoading){
                        VStack{
                            IndicatorProgress()
                        }
                        .padding()
                        .cornerRadius(20)
                        
                        .frame(maxWidth: geometry.size.width * 10.0)
                        .offset(y: 200)
                    }
                }
                
                .listStyle(InsetListStyle())
                .navigationTitle("Travelist")
                .navigationBarItems(trailing: NavigationLink(destination: ProfileView()) {
                    Image(systemName: "person.circle.fill")
                        .font(.title)
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
