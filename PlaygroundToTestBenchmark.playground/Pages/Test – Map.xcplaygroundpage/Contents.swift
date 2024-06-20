//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write code for a view containing a map that shows a specific location using MapKit.

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 37.7749, longitude: -122.4194),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )
    
    var body: some View {
        Map(coordinateRegion: $region)
            .edgesIgnoringSafeArea(.all)
    }
}

