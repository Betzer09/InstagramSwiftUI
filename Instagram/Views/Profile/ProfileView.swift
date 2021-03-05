//
//  ProfileView.swift
//  Instagram
//
//  Created by Austin Betzer on 3/2/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ScrollView() {
            VStack(spacing: 16) {
                ProfileHeaderView()
                // Posting Grid Content
                PostGridView()
                    .padding()
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
