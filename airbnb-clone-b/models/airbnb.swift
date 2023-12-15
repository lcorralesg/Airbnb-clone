//
//  airbnb.swift
//  airbnb-clone-b
//
//  Created by MAC40 on 1/12/23.
//

import Foundation
import MapKit

struct Airbnb : Codable{
    var places : [Place]
}

struct Place : Codable, Identifiable{
    var id: UUID? = nil
    let name : String
    let rating : Double
    let location : Location
    let image_url : String
    let date : String
    let price : Double
    let latitude: Double
    let longitude: Double
    
}

struct Location : Codable{
    let country : String
    let city : String
}

struct PlaceCoordinate: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}
