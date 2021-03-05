//
//  ProfileHeader.swift
//  Instagram
//
//  Created by Austin Betzer on 3/3/21.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        // Header
        VStack(alignment: .leading) {
            HStack {
                Image("venom3")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .padding(.leading)
                
                Spacer()
                
                
                HStack(spacing: 16) {
                    UserStatsView(value: 3, title: "Posts")
                    UserStatsView(value: 10, title: "Followers")
                    UserStatsView(value: 6, title: "Following")
                }.padding(.trailing, 32)
            }
            
            Text("Austin Betzer")
                .font(.system(size: 15, weight: .semibold))
                .padding([.leading, .top])
            
            Text("The scariest monster of all time lives underneath all the alien skin")
                .font(.system(size: 14, weight: .regular))
                .padding(.top, -2)
                .padding(.leading)
            
            HStack {
                Spacer()
                ProfileActionButtonView()
                Spacer()
            }
            .padding(.top)
        }
    }
}

struct ProfileHeader_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
            .previewLayout(.sizeThatFits)
    }
}
