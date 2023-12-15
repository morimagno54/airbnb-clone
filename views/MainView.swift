//
//  MainView.swift
//  airBindb-clon-A
//
//  Created by MAC37 on 10/11/23.
//


import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    TabItem(text: "Explore", image: "magnifing")
                }
            WhishlistView()
                .tabItem {
                    TabItem(text: "Wishlist", image: "heart")
                }
            TripsView()
                .tabItem {
                    TabItem(text: "Trips", image: "logo-icon")
                }
            InboxView()
                .tabItem {
                    TabItem(text: "Inbox", image: "inbox")
                }
            ProfileView()
                .tabItem {
                    TabItem(text: "Profile", image: "profile")
                }
        }
        .accentColor(Color("AirbnbPrimary"))
        .onAppear {
                        // correct the transparency bug for Tab bars
                        let tabBarAppearance = UITabBarAppearance()
                        tabBarAppearance.configureWithOpaqueBackground()
                        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
                        // correct the transparency bug for Navigation bars
                        let navigationBarAppearance = UINavigationBarAppearance()
                        navigationBarAppearance.configureWithOpaqueBackground()
                        UINavigationBar.appearance().scrollEdgeAppearance = navigationBarAppearance
                    }    }
}
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
