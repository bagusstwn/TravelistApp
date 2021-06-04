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
                    ZStack{
                        RectangleBG()
                        HStack{
                            Image(systemName: "")
                                .frame(width: 93, height: 92, alignment: .center)
                                .background(CustomRoundedCorners(color: Color.blue, tl: 20, tr: 0, bl: 20, br: 0))
                            
                            VStack(alignment: .leading){
                                Text("\(a.name)")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .lineLimit(1)
                                Text("\(a.address)")
                                    .font(.callout)
                                    .foregroundColor(.secondary)
                                    .lineLimit(1)
                            }
                            
                            Spacer()
                            HStack{
                                Image(systemName: "heart")
                                    .foregroundColor(.red)
                                Text("\(a.like)")
                            }
                            .padding()
                        }
                    }
                }
            }
            
            .listStyle(PlainListStyle())
            .navigationTitle("Travelist")
            .navigationBarItems(trailing: Button(action: {}){
                Image(systemName: "person.circle.fill")
                    .frame(width: 50.0, height: 50.0)
                    .font(.largeTitle)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
