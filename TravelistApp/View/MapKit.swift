//
//  MapKit.swift
//  TravelistApp
//
//  Created by Bagus setiawan on 04/06/21.
//

import SwiftUI
import MapKit

struct MapKit: View {
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: -6.966667 ,longitude: 110.416664),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapKit_Previews: PreviewProvider {
    static var previews: some View {
        MapKit()
    }
}
