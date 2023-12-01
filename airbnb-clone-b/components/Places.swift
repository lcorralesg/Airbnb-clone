//
//  Places.swift
//  airbnb-clone-b
//
//  Created by MAC40 on 3/11/23.
//

import SwiftUI

struct Places: View {
    
    var image: String
    var city: String
    var country: String
    var stars : String
    var description: String
    var date: String
    var price: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 13){
            AsyncImage( url: URL(string: image)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 360, height: 300)
            .cornerRadius(20)
            HStack{
                HStack(spacing: 2){
                    Text(city)
                        .fontWeight(.bold)
                    Text(country)
                        .fontWeight(.bold)
                }
                Spacer()
                Image(systemName: "star.fill")
                    .font(.system(size: 11))
                Text(stars)
            }
            Text(description)
            Text(date)
            Text(price)
        }
    }
}

struct Places_Previews: PreviewProvider {
    static var previews: some View {
        List{
            Places(image: "https://cdn.tiqets.com/wordpress/blog/wp-content/uploads/2017/08/03134557/24-hours-in-new-york-1-1024x570.jpg", city: "Harlingen,", country: "Netherlands", stars: "4.76", description: "Professional Host", date: "18-23 Dec", price: "$1.055 total")
        }.listStyle(.inset)}
    
}
