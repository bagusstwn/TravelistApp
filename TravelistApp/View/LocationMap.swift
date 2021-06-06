//
//  LocationMap.swift
//  TravelistApp
//
//  Created by Bagus setiawan on 04/06/21.
//

import SwiftUI
import MapKit

struct LocationMap: UIViewRepresentable {
    let user: Place
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let latitude = user.latitude
        let longitude = user.longitude

        let coordinate = CLLocationCoordinate2D(
            latitude: Double(latitude), longitude: Double(longitude))
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

