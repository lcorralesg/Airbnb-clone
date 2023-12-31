//
//  ContentViewModel.swift
//  airbnb-clone-b
//
//  Created by MAC40 on 1/12/23.
//

import Foundation

class ContentViewModel: ObservableObject {
    @Published var places = [Place]()

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
