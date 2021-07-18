//
//  MapView.swift
//  SwiftUIBasics
//
//  Created by Miguel Cruz on 16/07/21.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
  func makeUIView(context: Context) -> MKMapView {
      
    MKMapView(frame: .zero)
  }
  
  func updateUIView(_ uiView: MKMapView, context: Context) {
    let coordinate =
        CLLocationCoordinate2D(latitude: 50.15, longitude: 4.9)
    let span = MKCoordinateSpan(latitudeDelta: 12, longitudeDelta: 12)
    let region = MKCoordinateRegion(center: coordinate, span: span)
    
    uiView.setRegion(region, animated: true)
  }
}

struct MapView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      MapView()
          .previewDevice("iPhone 11")
    }
  }
}
