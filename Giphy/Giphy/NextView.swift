//
//  NextView.swift
//  Giphy
//
//  Created by 大谷悦志 on 2021/07/15.
//

import SwiftUI

struct NextView: View {
    @State var isChecked = false
    
    var body: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            VStack {
                
                Spacer()
                
                Text("Create an account")
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                Text("Create a giphy account so you can favorite, create, upload, & collect all the GIFs!")
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .padding(.horizontal)
                    .padding(.horizontal)
                    .padding(.horizontal)
                
                Spacer()
            
                CenterView()
                
                HStack{
                    Button(action: {
                        isChecked.toggle()
                    }, label: {
                        if isChecked {
                            Image(systemName: "checkmark.square.fill")
                                .resizable()
                                .frame(width: 20, height: 20, alignment: .center)
                                .foregroundColor(Color(#colorLiteral(red: 0.461848855, green: 0.983050406, blue: 0.6353908777, alpha: 1)))
                        } else {
                            Rectangle()
                                .frame(width: 20, height: 20, alignment: .center)
                                .foregroundColor(.white)
                        }
                    })
                    Text("I have read and agree to the Terms of service")
                        .foregroundColor(.white)
                        .font(.subheadline)
                    Spacer()
                }
                
                Spacer()
                    .frame(width: 0, height: 30, alignment: .center)
                
                Button(action: {
                    // action
                }, label: {
                    HStack {
                        Image("facebook")
                            .resizable()
                            .frame(width: 24, height: 24, alignment: .center)
                        Text("Sign in with Facebook")
                            .foregroundColor(.white)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                })
                
                Button(action: {
                    // action
                }, label: {
                    HStack {
                        Image(systemName: "applelogo")
                            .frame(width: 24, height: 24, alignment: .center)
                            .foregroundColor(.white)
                        Text("Sign in with Facebook")
                            .foregroundColor(.white)
                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                })
                
                Spacer()
            }
            .padding()
        }
    }
}

struct NextView_Previews: PreviewProvider {
    static var previews: some View {
        NextView()
    }
}
