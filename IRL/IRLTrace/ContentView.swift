//
//  ContentView.swift
//  IRLTrace
//
//  Created by 大谷悦志 on 2021/07/01.
//

import SwiftUI

struct ContentView: View {
    @State var showingSignUp = false
    
    var body: some View {
        VStack {
            Image("undraw_Taking_selfie_re_wlgd")
                .resizable()
                .frame(width: 75, height: 75, alignment: .center)
                .padding()
            
            Text("Sign up to spend more time with your friend IRL and discover fun things to do together")
                .font(.system(size: 20))
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
                .frame(height: 40)
            
            Button(action: {
                //action
            }, label: {
                HStack {
                    Image("icons8-google-48")
                        .resizable()
                        .frame(width: 20, height: 20, alignment:    .center)
                        .foregroundColor(.white)
                    Text("continue with Google")
                        .foregroundColor(.white)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color(#colorLiteral(red: 0.271053791, green: 0.5673333406, blue: 0.9694984555, alpha: 1)))
                .cornerRadius(24)
                .padding(.horizontal)
            })
            
            Button(action: {
                showingSignUp.toggle()
            }, label: {
                HStack {
                    Image(systemName: "envelope")
                        .foregroundColor(.gray)
                    Text("Sign up with email or phone")
                        .foregroundColor(.black)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color(#colorLiteral(red: 0.9657239318, green: 0.9698545337, blue: 0.969240129, alpha: 1)))
                .cornerRadius(24)
                .padding(.horizontal)
            })
            .fullScreenCover(isPresented: $showingSignUp, content: {
                SignInView()
            })
            Text("Already have an account? Log in")
        }
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
