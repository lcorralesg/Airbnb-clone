//
//  Places.swift
//  airbnb-clone-b
//
//  Created by MAC40 on 3/11/23.
//

import SwiftUI

struct Places: View {
    
    var image: String
    var name: String
    var stars : String
    var description: String
    var date: String
    var price: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Image(image)
                .frame(width: 342, height: 323)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(12)
            HStack{
                Text(name)
                    .fontWeight(.bold)
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
        Places(image: "item1", name: "Harlingen, Netherlands", stars: "4.76", description: "Professional Host", date: "18-23 Dec", price: "$1.055 total")
    }
}
