//
//  IndicatorView.swift
//  TravelistApp
//
//  Created by Bagus setiawan on 05/06/21.
//

import SwiftUI

struct IndicatorView: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<IndicatorView>) -> UIActivityIndicatorView {
        let indicator = UIActivityIndicatorView(style: .large)
        indicator.color = UIColor.gray
        return indicator
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<IndicatorView>) {
        uiView.startAnimating()
    }
}
