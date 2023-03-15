//
//  MapView.swift
//  1-tutorial
//
//  Created by Seungui Moon on 2023/03/15.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 33.431441, longitude: 126.544237),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.8)
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
