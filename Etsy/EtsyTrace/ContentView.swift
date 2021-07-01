//
//  ContentView.swift
//  EtsyTrace
//
//  Created by 大谷悦志 on 2021/06/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showingLogin = false
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    //action
                }, label: {
                    Text("Continue as guest")
                        .foregroundColor(Color.black)
                        .padding(.trailing)
                })
            }
            
            Spacer()
            
            Text("Etsy")
                .font(.system(size: 60))
                .foregroundColor(Color(#colorLiteral(red: 0.8761140704, green: 0.4254814684, blue: 0.2137785554, alpha: 1)))
            
            Image("undraw_dua_lipa_ixam")
                .resizable()
                .frame(width: 200, height: 200, alignment: .center)
                .padding()
            
            Spacer()

            Text("Welcome to the world's most imaginative marketplace")
                .font(.title2)
                .frame(width: 300)
                .multilineTextAlignment(.center)
                .padding()
                .overlay(Rectangle()
                            .frame(height: 1)
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal), alignment: .bottom)
                
            Button(action: {
                showingLogin.toggle()
            }, label: {
                Text("Sign up")
                    .foregroundColor(Color.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.black)
                    .cornerRadius(25)
                
            })
            .sheet(isPresented: $showingLogin, content: {
                LoginView(showingLogin: $showingLogin)
            })
            
            Button(action: {
                //action
            }, label: {
                Text("I already have an account")
                    .foregroundColor(Color.black)
                    .frame(width: 400, height: 50, alignment: .center)
                
            })
        }
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
