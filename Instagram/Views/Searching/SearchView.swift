//
//  SearchView.swift
//  Instagram
//
//  Created by Austin Betzer on 3/2/21.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    
    var body: some View {
        ScrollView {
            SearchBar(text: $searchText)
                .padding()

//            PostGridView()
            UserListView()
            // grid view / user list view
        }
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
