//
//  MapView.swift
//  testing
//
//  Created by Evan on 15/1/2022.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 22.367625, longitude: 114.120369),
        span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
            )
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
