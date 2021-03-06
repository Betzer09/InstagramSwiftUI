//
//  PostGridView.swift
//  Instagram
//
//  Created by Austin Betzer on 3/3/21.
//

import SwiftUI

struct PostGridView: View {
    private let items = [GridItem(), GridItem(), GridItem()]
    private let width = UIScreen.main.bounds.width / 3
    
    var body: some View {
        LazyVGrid(columns: items, spacing: 2, content: {
            ForEach(0..<10) { _ in
                NavigationLink(
                    destination: FeedView(),
                    label: {
                        Image("ironman3")
                            .resizable()
                            .scaledToFill()
                            .frame(width: width, height: width)
                            .clipped()                        
                    })
                
            }
            
        }/*@END_MENU_TOKEN@*/)
    }
}

struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridView()
    }
}
