//
//  RectangleBG.swift
//  TravelistApp
//
//  Created by Bagus setiawan on 04/06/21.
//

import SwiftUI

struct RectangleBG: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color.white)
            .frame(maxWidth:  .infinity, alignment: .center)
            .shadow(color: Color.black.opacity(0.2), radius: 3, x: 2, y: 5)
            
            
    }
}

struct RectangleBG_Previews: PreviewProvider {
    static var previews: some View {
        RectangleBG()
    }
}
