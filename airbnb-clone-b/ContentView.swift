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
            }
            
            List{
                VStack{
                    Image("item1")
                        .frame(width: 342, height: 323)
                        .aspectRatio(contentMode: .fit)
                        .cornerRadius(12)
                    HStack{
                        Text("Harlingen, Netherlands")
                            .fontWeight(.bold)
                        Spacer()
                        Image(systemName: "star.fill")
                            .font(.system(size: 11))
                        Text("4.76")
                    }
                }
            }.listStyle(.inset)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
