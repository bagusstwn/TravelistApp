//
//  CircleProfileImageView.swift
//  TravelistApp
//
//  Created by Bagus setiawan on 04/06/21.
//

import SwiftUI

struct CircleProfileImageView: View {
    var body: some View {
        Image("Bagus")
            .resizable()
            .scaledToFill()
            .frame(width: 160, height: 160)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color(UIColor(named: "circlePhotoList")!), lineWidth: 9))
            .shadow(radius: 7)
    }
}

struct CircleProfileImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleProfileImageView()
    }
}
