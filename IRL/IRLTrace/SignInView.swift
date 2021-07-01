//
//  SignInView.swift
//  IRLTrace
//
//  Created by 大谷悦志 on 2021/07/01.
//

import SwiftUI

struct SignInView: View {
    @State var firstname = ""
    @State var lastname = ""
    var body: some View {
        VStack {
            Text("Enter Your name")
                .font(.title)
                .fontWeight(.bold)
            HStack {
                VStack {
                    TextField("", text: $firstname)
                        .padding()
                        .overlay(Rectangle()
                                    .frame(height: 1)
                                    .background(Color.gray), alignment: .bottom)
                    Text("First")
                        .foregroundColor(.gray)
                }
                VStack {
                    TextField("", text: $firstname)
                        .padding()
                        .overlay(Rectangle()
                                    .frame(height: 1)
                                    .background(Color.gray), alignment: .bottom)
                    Text("First")
                        .foregroundColor(.gray)
                }
            }
            HStack {
                Rectangle()
                    .frame(width: 24, height: 24, alignment: .center)
                    .background(Color.white)
            }
        }
        .padding(.horizontal)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
