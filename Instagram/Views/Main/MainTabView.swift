//
//  MainTabView.swift
//  Instagram
//
//  Created by Austin Betzer on 3/2/21.
//

import SwiftUI

/**
 The Apps Main tab view
 */
struct MainTabView: View {
    var body: some View {
        
        TabView() {
            
            FeedView()
                .tabItem { Image(systemName: "house") }
            SearchView()
                .tabItem { Image(systemName: "magnifyingglass") }
            UploadPostView()
                .tabItem { Image(systemName: "plus.square") }
            NotificationsView()
                .tabItem { Image(systemName: "heart") }
            ProfileView()
                .tabItem { Image(systemName: "person") }
            
        } // Tab
        .accentColor(.black)
        
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
