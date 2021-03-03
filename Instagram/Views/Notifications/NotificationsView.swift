//
//  NotificationsView.swift
//  Instagram
//
//  Created by Austin Betzer on 3/2/21.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        ScrollView() {
            LazyVStack() {
                ForEach(0..<10) { _ in
                    NotificationCell()
                        .padding(.top)
                }
            }
        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
