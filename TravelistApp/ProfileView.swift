//
//  ProfileView.swift
//  TravelistApp
//
//  Created by Bagus setiawan on 04/06/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            MapKit()
                .frame(height: 300)
            CircleProfileImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading){
                Text("Bagus Setiawan")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Setiawanbagus4315@gmail.com")
            }
            Divider()
            Spacer()
            
        }
        .navigationTitle("Profile")
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
