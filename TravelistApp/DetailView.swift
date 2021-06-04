//
//  DetailView.swift
//  TravelistApp
//
//  Created by Bagus setiawan on 04/06/21.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ScrollView(.vertical){
                VStack{
                    ZStack{
                        Rectangle()
                            .frame(width: 365, height: 345)
                            .foregroundColor(.blue)
                            .cornerRadius(20)
                            .padding([.top, .leading, .trailing])
                        Text("asasasas")
                            .fontWeight(.bold)
                            .font(.title)
                            .foregroundColor(.white)
                            .position(x: 110, y: 330)
                    }
                    
                    HStack{
                        Text("Detusoko, Kabupaten Ende, NTT")
                            .font(.callout)
                            .foregroundColor(.secondary)
                            .padding([.leading], 20)
                        Spacer()
                        Image(systemName: "heart")
                            .foregroundColor(.red)
                            .padding([.top], 20)
                        Text("14")
                            .padding([.trailing, .top], 20)
                    }
                    Divider()
                    
                    VStack(alignment: .leading){
                        Text("Deskripsi")
                            .padding([.leading], 20)
                            .font(.headline)
                        Text("""
                            Taman Nasional Kelimutu terletak di Flores, Indonesia.Taman nasional ini terdiri dari bukit-bukit dan gunung-gunung dengan Gunung Kelibara (1.731 m) sebagai puncak tertinggi. Gunung Kelimutu, terdapat danau Danau tiga warna yang juga merupakan tempat dari Taman Nasional Kelimutu. Di dalam Taman Nasional Kelimutu, terdapat arboretum, hutan kecil seluas 4,5 hektare yang mewakili koleksi, Indonesia.Taman nasional ini terdiri dari bukit-bukit dan gunung-gunung dengan Gunung Kelibara (1.731 m) sebagai puncak tertinggi. Gunung Kelimutu, terdapat danau Danau tiga warna yang juga merupakan tempat dari Taman Nasional Kelimutu. Di dalam Taman Nasional Kelimutu, terdapat arboretum, hutan kecil seluas 4,5 hektare yang mewakili koleksi
                        """)
                            .multilineTextAlignment(.leading)
                            .padding([.leading,.trailing], 20)
                        
                    }
                }
            }
            .navigationTitle("Detail")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
