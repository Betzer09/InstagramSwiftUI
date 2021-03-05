//
//  ProfileActionButtonView.swift
//  Instagram
//
//  Created by Austin Betzer on 3/3/21.
//

import SwiftUI

struct ProfileActionButtonView: View {
    
    var isCurrentUser = false
    var isFollowed = false
    
    var body: some View {
        if isCurrentUser {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Edit Profile")
            })
            .frame(width: 360, height: 32)
            .padding(.horizontal)
            .foregroundColor(.black)
            .font(.system(size: 14, weight: .semibold))
            .overlay(
                RoundedRectangle(cornerRadius: 3)
                    .stroke(Color.gray, lineWidth: 1)
            )
        } else {
            // Follow and message button
            
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text(isFollowed ? "Following": "Follow")
                })
                .frame(height: 32)
                .frame(minWidth: 100)
                .padding(.horizontal)
                .foregroundColor(isFollowed ? .black : .white)
                .background(isFollowed ? Color.white: Color.blue)
                .font(.system(size: 14, weight: .semibold))
                .overlay(
                    RoundedRectangle(cornerRadius: 3)
                        .stroke(Color.gray, lineWidth: isFollowed ? 1: 0 )
                ).cornerRadius(3)
                
                Button(action: {}, label: {
                    Text("Message")
                })
                .frame(height: 32)
                .frame(minWidth: 100)
                .padding(.horizontal)
                .foregroundColor(.black)
                .font(.system(size: 14, weight: .semibold))
                .overlay(
                    RoundedRectangle(cornerRadius: 3)
                        .stroke(Color.gray, lineWidth: 1)
                )
            }
        }
    }
}

struct ProfileActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileActionButtonView()
    }
}
