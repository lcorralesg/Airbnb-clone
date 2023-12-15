//
//  TripsViewModel.swift
//  airbnb-clone-b
//
//  Created by MAC40 on 15/12/23.
//

import Foundation
import MapKit

class TripsViewModel: ObservableObject {
    
    @Published var annotations: [PlaceCoordinate] = [PlaceCoordinate]()

    var places = [Place]() {
        didSet {
            for place in places {
                let coordinate = CLLocationCoordinate2D(latitude: place.latitude, longitude: place.longitude)
                let annotation = PlaceCoordinate(name: place.name, coordinate: coordinate)
                annotations.append(annotation)
            }
        }
    }

    init() {
        guard let url = URL(string: "https://alexa-docs.onrender.com/places") else { return }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            guard let data = data else { return }
            do {
                var airbnb = try JSONDecoder().decode(Airbnb.self, from: data)
                for index in airbnb.places.indices {
                    airbnb.places[index].id = UUID()
                }
                DispatchQueue.main.async {
                    self.places = airbnb.places
                }
                
            } catch {
                print("Error decoding JSON: \(error)")
            }
        }.resume()
    }
}
