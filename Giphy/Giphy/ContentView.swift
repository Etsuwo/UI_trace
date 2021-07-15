//
//  ContentView.swift
//  Giphy
//
//  Created by 大谷悦志 on 2021/07/15.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showNext = false
    
    var body: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Image("giphy")
                        .resizable()
                        .frame(width: 60, height: 80, alignment: .center)
                    Text("GIPHY")
                        .fontWeight(.bold)
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                }
                Text("Your Destination for bite-sized, sharable entertainment")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                
                Spacer()
                
                Button(action: {
                    showNext.toggle()
                }, label: {
                    Text("Get Started!")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color(#colorLiteral(red: 0.371984005, green: 0.3415359855, blue: 0.9640856385, alpha: 1)))
                })
                .fullScreenCover(isPresented: $showNext, content: {
                    NextView()
                })
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
