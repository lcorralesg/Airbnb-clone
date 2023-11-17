//
//  ProfileView.swift
//  airbnb-clone-b
//
//  Created by MAC40 on 10/11/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading){
                Image("Image-profile")
                    .resizable()
                    .frame(width: 104, height: 100)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(100)
            VStack(alignment: .leading){
                Text("Hi, I'm Luis")
                    .font(
                        .title
                        .weight(.bold)
                    )
                Text("joined in 2023")
                    .fontWeight(.light)
                    .foregroundColor(.gray)
            }.padding(.bottom, 30)
            Divider()
                .padding(.bottom, 30)
            Text("Identity verification")
                .fontWeight(.bold)
                .padding(.bottom, 5)
            Text("Show others you're really you with the identity verification badge")
                .padding(.bottom, 10)
            Button {
            } label: {
                Text("Get the badge")
                    .padding()
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(
                            cornerRadius: 10,
                            style: .continuous
                        )
                        .stroke(.black, lineWidth: 2)
                    )
            }.padding(.bottom, 30)
            Divider()
            HStack{
                Image(systemName: "waveform.path")
                
                Text("Some info is shown in its original language")
                        .font(.system(size: 15))
            }
            Text("Traslate")
                    .bold()
                    .underline()
                    .padding(.leading, 30)
            
            Text("Matt confirmed")
                .font(
                    .title
                    .weight(.bold)
                )
        }.padding(30)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
