//
//  MainTapbarView.swift
//  AirBnbTutorial
//
//  Created by Ariel Merino on 08/11/23.
//

import SwiftUI

struct MainTapbarView: View {
    
    @State private var selectedTab = 1
    
    var body: some View {
        TabView(selection: $selectedTab){
            WishlistView()
                .badge(0)
                .tag(0)
                .tabItem { Label("Wishlist", systemImage: "heart")}
            
            ExploreView()
                .badge(/*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .tag(1)
                .tabItem { Label("Explore", systemImage: "magnifyingglass")}
            
            ProfileView()
                .badge(0)
                .tag(2)
                .tabItem { Label("Profile", systemImage: "person.crop.circle")}
            
        }
    }
}

#Preview {
    MainTapbarView()
}
