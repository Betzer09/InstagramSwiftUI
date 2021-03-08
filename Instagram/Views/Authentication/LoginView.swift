//
//  LoginView.swift
//  Instagram
//
//  Created by Austin Betzer on 3/8/21.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationView {
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.purple, .blue]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                
                VStack {
                    Text("Instagram")
                        .foregroundColor(.white)
                        .font(.system(size: 35))
                    
                    VStack(spacing: 10) {
                        CustomTextField(text: $email, placeHolder: Text("Email"), imgName: "envelope")
                            .padding()
                            .background(Color(.init(white: 1, alpha: 0.15)))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding(.horizontal, 32)
                        
                        CustomSecureField(text: $password, placeHolder: Text("password"))
                            .padding()
                            .background(Color(.init(white: 1, alpha: 0.15)))
                            .cornerRadius(10)
                            .foregroundColor(.white)
                            .padding(.horizontal, 32)
                        
                        HStack() {
                            Spacer()
                            
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                Text("Forgot password")
                                    .font(.system(size: 13, weight: .semibold))
                                    .foregroundColor(.white)
                                    .padding(.trailing, 28)
                            })
                        }
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Sign in")
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(width: 320, height: 50)
                                .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                                .clipShape(Capsule())
                                .padding(.top, 4)
                        })
                        
                        Spacer()
                        
                        NavigationLink(
                            destination: RegistrationView().navigationBarHidden(true),
                            label: {
                                HStack {
                                    Text("Don't have an account?")
                                        .font(.system(size: 14))
                                    
                                    Text("Sign Up")
                                        .font(.system(size: 14, weight: .semibold))
                                }.foregroundColor(.white)
                            })
                        
                    }
                }
                .padding(.top, -44)
            }
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
