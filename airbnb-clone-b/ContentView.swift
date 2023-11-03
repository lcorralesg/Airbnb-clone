//
//  ContentView.swift
//  airbnb-clone-b
//
//  Created by MAC40 on 3/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 50){
                    Category(icon: "airplane.circle", text: "OMG!")
                    Category(icon: "beach.umbrella", text: "Beaches")
                    Category(icon: "house.fill", text: "Tiny Home")
                    Category(icon: "figure.golf", text: "Golfing")
                    Category(icon: "photo.tv", text: "Amazing")
                }
            }.padding(.horizontal)
            Divider()
            List{
                Places(image: "item1", name: "Harlingen, Netherlands", stars: "4.76", description: "Professional Host", date: "18-23 Dec", price: "$1.055 total")
                Places(image: "item1", name: "Harlingen, Netherlands", stars: "4.76", description: "Professional Host", date: "18-23 Dec", price: "$1.055 total")
                Places(image: "item1", name: "Harlingen, Netherlands", stars: "4.76", description: "Professional Host", date: "18-23 Dec", price: "$1.055 total")
            }.listStyle(.inset)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
