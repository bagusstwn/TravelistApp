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
            BackgroundProfileView()
                .frame(height: 40, alignment: .center)
                .offset(y: -25)
            CircleProfileImageView()
            Text("Data Personal")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.secondary)
            Form{
                HStack{
                    Image(systemName: "person.circle")
                        .foregroundColor(.secondary)
                        .padding(.trailing, 10)
                    Text("Bagus Setiawan")
                }
                
                HStack{
                    Image(systemName: "envelope")
                        .foregroundColor(.secondary)
                        .padding(.trailing, 10)
                    Text("Setiawanbagus4315@gmail.com")
                }
                
                HStack{
                    Image(systemName: "phone.circle")
                        .foregroundColor(.secondary)
                        .padding(.trailing, 10)
                    Text("085223456247")
                }
            }
        }
        
        .navigationBarTitle(Text("Profile"))
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
