//
//  BackgroundProfileView.swift
//  TravelistApp
//
//  Created by Bagus setiawan on 07/06/21.
//

import SwiftUI

struct BackgroundProfileView: View {
    var body: some View {
        Image("profileBG")
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 400, height: 100, alignment: .center)
    }
}

struct BackgorundProfile_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundProfileView()
    }
}
