//
//  TripsView.swift
//  airbnb-clone-b
//
//  Created by MAC40 on 10/11/23.
//

import SwiftUI
import MapKit

struct TripsView: View {
    
    @StateObject var tripsViewModel = TripsViewModel()

    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.730610, longitude: -73.935242), span: MKCoordinateSpan(latitudeDelta: 100, longitudeDelta: 100))

    var body: some View {
        ZStack {
            Map(coordinateRegion: $region, annotationItems: tripsViewModel.annotations) { place in
                MapAnnotation(coordinate: place.coordinate) {
                    VStack {
                        Text(place.name)
                            .font(.caption)
                    }
                }
            }
            .ignoresSafeArea()
            TripPlaceItem()
        }
    }
}

struct TripsView_Previews: PreviewProvider {
    static var previews: some View {
        TripsView()
    }
}
