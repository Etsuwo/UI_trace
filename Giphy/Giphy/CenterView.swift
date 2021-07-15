//
//  centerView.swift
//  Giphy
//
//  Created by 大谷悦志 on 2021/07/15.
//

import SwiftUI

struct CenterView: View {
    @State var email = ""
    @State var userName = ""
    @State var pass = ""
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {}, label: {
                    Text("Sign up")
                        .foregroundColor(.black)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color(#colorLiteral(red: 0.461848855, green: 0.983050406, blue: 0.6353908777, alpha: 1)))
                })
                Button(action: {}, label: {
                    Text("Log in")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color(#colorLiteral(red: 0.2431135178, green: 0.2431529462, blue: 0.2431010902, alpha: 1)))
                })
            }
            TextField("Email Adress", text: $email)
                .padding()
                .background(Color.white)
            TextField("Username", text: $userName)
                .padding()
                .background(Color.white)
            TextField("Password", text: $pass)
                .padding()
                .background(Color.white)
            Button(action: {
                // action
            }, label: {
                Text("Get Started!")
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(#colorLiteral(red: 0.371984005, green: 0.3415359855, blue: 0.9640856385, alpha: 1)))
            })
        }
    }
}

struct CenterView_Previews: PreviewProvider {
    static var previews: some View {
        CenterView()
    }
}
