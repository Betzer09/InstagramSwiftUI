//
//  ContentView.swift
//  Instagram
//
//  Created by Austin Betzer on 3/2/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        MainTabView()
        LoginView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 mini")
    }
}
