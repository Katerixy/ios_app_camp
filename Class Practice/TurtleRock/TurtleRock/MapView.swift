//
//  MapView.swift
//  TurtleRock
//
//  Created by Kateryna Tserkus on 8/8/25.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let center = CLLocationCoordinate2D(latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(
            latitudeDelta: 2.0,
            longitudeDelta: 2.0)
        let region = MKCoordinateRegion(
            center: center,
            span: span)
        uiView.setRegion(region, animated: true)
    }
    
}

#Preview {
    MapView()
}
