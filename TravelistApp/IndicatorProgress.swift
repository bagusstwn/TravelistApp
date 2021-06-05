//
//  IndicatorProgress.swift
//  TravelistApp
//
//  Created by Bagus setiawan on 05/06/21.
//

import SwiftUI

struct IndicatorProgress: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<IndicatorProgress>) -> UIActivityIndicatorView {
        let indicator = UIActivityIndicatorView(style: .large)
        indicator.color = UIColor.gray
        return indicator
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<IndicatorProgress>) {
        uiView.startAnimating()
    }
}
