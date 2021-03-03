//
//  UserCell.swift
//  Instagram
//
//  Created by Austin Betzer on 3/3/21.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            Image("ironman3")
                .frame(width: 48, height: 48)
                .scaledToFill()
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text("Austin")
                    .font(.system(size: 14, weight: .semibold))
                Text("Bruce Wayne")
                    .font(.system(size: 14, weight: .regular))
            }
            
            Spacer()
            
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
//            .previewLayout(.sizeThatFits)
            
    }
}
