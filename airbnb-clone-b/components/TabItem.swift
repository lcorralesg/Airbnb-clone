//
//  TabItem.swift
//  airbnb-clone-b
//
//  Created by MAC40 on 10/11/23.
//

import SwiftUI

struct TabItem: View {
    var icon: String
    var text: String
    var body: some View {
        VStack{
            Image(icon)
                .renderingMode(.template)
            Text(text)
        }
    }
}

struct TabItem_Previews: PreviewProvider {
    static var previews: some View {
        TabItem(icon: "magnifing", text: "Explore")
    }
}
