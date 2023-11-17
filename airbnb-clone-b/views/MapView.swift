//
//  MapView.swift
//  airbnb-clone-b
//
//  Created by MAC40 on 17/11/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -12.04552, longitude: -76.95264), span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))

    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
            VStack {
                Spacer()
                HStack {
                    ZStack(alignment: .leading){
                        Image("item1")
                            .resizable()
                        .frame(width: 120)
                        VStack{
                            Image(systemName: "xmark.circle.fill")
                                .foregroundStyle(.white, .gray)
                                .font(.system(size:20))
                            Spacer()
                        }.padding(10)
                    }
                    VStack(alignment: .leading, spacing: 10) {
                        Text("La Calera, Colombia")
                            .font(.caption)
                            .fontWeight(.semibold)
                        Spacer()
                        Text("Nov 19 - 24")
                            .font(.caption)
                            .fontWeight(.light)
                        Text("S/ 268 night")
                            .font(.caption)
                    }
                    .padding(.vertical)
                    Spacer()
                    VStack(alignment: .trailing){
                        Image(systemName: "heart")
                        Spacer()
                        HStack(spacing: -0.3){
                            Image(systemName: "star.fill")
                                .font(.system(size: 10))
                            Text("4.91")
                                .font(.system(size: 13))
                        }
                    }
                    .padding()
                }
                .frame(height: 120)
                .background(.white)
                .cornerRadius(15)
            }
            .padding()
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
