//
//  SearchView.swift
//  Instagram
//
//  Created by Austin Betzer on 3/2/21.
//

import SwiftUI

struct SearchView: View {
    @State var searchText = ""
    @State var inSearchMode = true
    
    
    var body: some View {
        ScrollView {
            SearchBar(isEditing: $inSearchMode, text: $searchText)
                .padding()

            
            // grid view / user list view
            ZStack() {
                if inSearchMode {
                    UserListView()
                } else {
                    PostGridView()
                }
            }   
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
