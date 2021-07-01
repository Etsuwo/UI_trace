//
//  LoginView.swift
//  EtsyTrace
//
//  Created by 大谷悦志 on 2021/06/24.
//

import SwiftUI

struct LoginView: View {
    @State var emailOrUserName = ""
    @State var password = ""
    @Binding var showingLogin: Bool
    
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                Color(#colorLiteral(red: 0.965675652, green: 0.9220539331, blue: 0.9006484151, alpha: 1))
                VStack {
                    HStack {
                        Button(action: {
                            showingLogin.toggle()
                        }, label: {
                            Text("Cancel")
                                .foregroundColor(.black)
                                .padding()
                                .font(.title2)
                        })
                        Spacer()
                    }
                    
                    TextField("Email or UserName", text: $emailOrUserName)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                        .overlay(RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray, lineWidth: 1.0))
                        .padding(.horizontal)
                    
                    TextField("Password", text: $password)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                        .overlay(RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.gray, lineWidth: 1.0))
                        .padding(.horizontal)
                    
                    Text("By tapping Sign in, or Continue with Apple, Facebook, or Google, you agree to Etsy's Terms of Use and Privacy Policy")
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                        .padding()
                    
                    Button(action: {
                        //action
                    }, label: {
                        Text("Sign in")
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.black)
                            .cornerRadius(24)
                            .padding(.horizontal)
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Forgot password?")
                            .foregroundColor(.black)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal)
                    })
                }
            }
            .frame(height: 400)
            
            Spacer()
                .frame(height: 40)
            
            Button(action: {
                //action
            }, label: {
                Label("Continue with Apple", systemImage: "applelogo")
                    .foregroundColor(.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .cornerRadius(24)
                    .overlay(RoundedRectangle(cornerRadius: 24)
                                .stroke(Color.black, lineWidth: 2))
                    .padding(.horizontal)
            })
            
            Button(action: {
                //action
            }, label: {
                HStack {
                    Image("icons8-facebook-48")
                        .resizable()
                        .frame(width: 20, height: 20, alignment: .center)
                    Text("Continue with Facebook")
                        .foregroundColor(.black)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .cornerRadius(24)
                .overlay(RoundedRectangle(cornerRadius: 24)
                            .stroke(Color.black, lineWidth: 2))
                .padding(.horizontal)
            })
            
            Button(action: {
                //action
            }, label: {
                HStack {
                    Image("icons8-google-48")
                        .resizable()
                        .frame(width: 20, height: 20, alignment: .center)
                    Text("Continue with Google")
                        .foregroundColor(.black)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .cornerRadius(24)
                .overlay(RoundedRectangle(cornerRadius: 24)
                            .stroke(Color.black, lineWidth: 2))
                .padding(.horizontal)
            })
            
            Button(action: {
                
            }, label: {
                Text("Don't have an account? Sign up")
                    .foregroundColor(.black)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal)
            })
            Spacer()
        }
    }
}

