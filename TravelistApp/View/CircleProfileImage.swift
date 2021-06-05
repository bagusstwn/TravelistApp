//
//  CircleProfileImage.swift
//  TravelistApp
//
//  Created by Bagus setiawan on 04/06/21.
//

import SwiftUI

struct CircleProfileImage: View {
    var body: some View {
        Image("Bagus")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 7)
    }
}

struct CircleProfileImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleProfileImage()
    }
}
