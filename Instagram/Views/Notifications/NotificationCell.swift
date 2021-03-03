//
//  NotificationCell.swift
//  Instagram
//
//  Created by Austin Betzer on 3/3/21.
//

import SwiftUI

struct NotificationCell: View {
    @State private var showPostImage = false
    
    var body: some View {
        HStack() {
            Image("ironman3")
                .resizable()
                .frame(width: 40, height: 40)
                .scaledToFill()
                .clipShape(Circle())
            
            
                Text("batman").font(.system(size: 14, weight: .semibold)) + Text(" Liked one of your posts!").font(.system(size: 15))
            Spacer()
            
            if showPostImage {
                Image("ironman3")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .scaledToFill()
            } else {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Following")
                        .padding(.horizontal, 20)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        .font(.system(size: 14, weight: .semibold))
                })
            }
        }
        .padding(.horizontal)
    }
}

struct NotificationCell_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCell()
            .previewLayout(.sizeThatFits)
    }
}
