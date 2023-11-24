//
//  WishlistView.swift
//  airbnb-clone-b
//
//  Created by MAC40 on 10/11/23.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        VStack{
                ZStack{
                       AutoScroller(imageNames: ["item1", "venecia", "venecia2"], size: 450, imagesize: 600)
                       VStack{
                           HStack{
                               Image(systemName: "chevron.backward.circle.fill")
                                   .foregroundColor(.white)
                                   .font(.system(size: 35))
                               
                               Spacer()
                               
                               Image(systemName: "square.and.arrow.up.circle.fill")
                                   .foregroundColor(.white)
                                   .font(.system(size: 35))

                               Image(systemName: "heart.circle")
                                   .foregroundColor(.white)
                                   .font(.system(size: 35))

                           }
                           Spacer()
                           HStack(spacing: 20){
                               Image(systemName: "pause.fill")
                                   .foregroundColor(.white)
                                   .font(.system(size: 24))

                               Image(systemName: "speaker.slash.fill")
                                   .foregroundColor(.white)
                                   .font(.system(size: 24))

                               Spacer()
                           }
                       }.frame(width: 350, height: 380)
                   }.frame(height: 420)
            Spacer()
            WishDescription()
        }
    }
}

struct WishlistView_Previews: PreviewProvider {
    static var previews: some View {
        WishlistView()
    }
}
