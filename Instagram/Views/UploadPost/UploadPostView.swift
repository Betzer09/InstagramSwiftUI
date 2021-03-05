//
//  UploadPostView.swift
//  Instagram
//
//  Created by Austin Betzer on 3/2/21.
//

import SwiftUI

struct UploadPostView: View {
    @State private var selectedImage: UIImage?
    @State var postImage: Image?
    @State var captionText: String = ""
    var body: some View {
        VStack {
            if postImage != nil {
                VStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "plus.circle")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .foregroundColor(.black)
                            .padding(.top, 40)
                    })
                    
                    Text("Photo")
                }
            } else {
                HStack {
                    Image("venom3")
                        .resizable()
                        .frame(width: 96, height: 96)
                    
                    TextField("Enter your caption", text: $captionText)
                }.padding()
                
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Share")
                        .font(.system(size: 16, weight: .semibold))
                        .frame(width: 360, height: 50, alignment: .center)
                        .background(Color.blue)
                        .cornerRadius(5)
                        .foregroundColor(.white)
                })
                .padding()
            }
            
            Spacer()
        }
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView()
    }
}
