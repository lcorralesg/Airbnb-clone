//
//  WishDescription.swift
//  airbnb-clone-b
//
//  Created by MAC40 on 24/11/23.
//

import SwiftUI

struct WishDescription: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Venice Canal Tours")
                .fontWeight(.semibold)
                .font(.system(size: 30))
            HStack{
                Image(systemName: "star.fill")
                    .font(.system(size: 15))
                Text("4.76")
                    .padding(.leading, -6)
                Text("(116) .")
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                Text("Venice, Italy")
                    .bold()
                    .underline()
            }.padding(.top, -5)
            Divider()
                .padding(.top, 15)
            HStack{
                Text("Experience hosted by Shaun")
                    .fontWeight(.semibold)
                    .font(.system(size: 23))
                    .fixedSize(horizontal: false, vertical: true)
                Spacer()
                Image("Image-profile")
                    .resizable()
                    .frame(width: 53, height: 50)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(100)
                    .saturation(0.0)
            }.padding(.top, 15)
            Divider()
            HStack{
                VStack(alignment: .leading){
                    HStack{
                        Text("From $91")
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                        Text("/group")
                            .font(.system(size: 15))
                    }.padding(.bottom, 2)
                    Text("Show all prices")
                        .fontWeight(.light)
                        .underline()
                        .foregroundColor(.gray)
                        .font(.system(size: 15))
                }
                Spacer()
                Button {
                } label: {
                    Text("Show dates")
                        .padding()
                        .background(Color("airbnbSecondary"))
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }.padding(.bottom, 25)
        }.padding(20)
    }
}

struct WishDescription_Previews: PreviewProvider {
    static var previews: some View {
        WishDescription()
    }
}
