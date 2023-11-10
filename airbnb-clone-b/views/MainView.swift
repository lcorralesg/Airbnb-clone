//
//  MainView.swift
//  airbnb-clone-b
//
//  Created by MAC40 on 10/11/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem{
                    TabItem(icon: "magnifing", text: "Explore")
                }
            WishlistView()
                .tabItem{
                    TabItem(icon: "heart", text: "Wishlist")
                }
            TripsView()
                .tabItem{
                    TabItem(icon: "logo-icon", text: "Trips")
                }
            InboxView()
                .tabItem{
                    TabItem(icon: "inbox", text: "Inbox")
                }
            ProfileView()
                .tabItem{
                    TabItem(icon: "profile", text: "Profile")
                }
        }
        .tint(Color("airbnbPrimary"))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
