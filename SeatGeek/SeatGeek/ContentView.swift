//
//  ContentView.swift
//  SeatGeek
//
//  Created by 大谷悦志 on 2021/08/12.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = #colorLiteral(red: 0.208378464, green: 0.4464766979, blue: 0.8731962442, alpha: 1)
        UIPageControl.appearance().pageIndicatorTintColor = .lightGray
    }
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {}, label: {
                    Text("SKIP")
                        .fontWeight(.bold)
                        .font(.system(size: 16))
                })
            }
            
            TabView {
                FirstView()
                Text("Second View")
                Text("Third View")
            }
            .tabViewStyle(PageTabViewStyle())
            
            Divider()
            
            HStack {
                Button(action: {}, label: {
                    Text("Sign up")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color(#colorLiteral(red: 0.208378464, green: 0.4464766979, blue: 0.8731962442, alpha: 1)))
                        .cornerRadius(10)
                })
                Button(action: {}, label: {
                    Text("Log in")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color(#colorLiteral(red: 0.208378464, green: 0.4464766979, blue: 0.8731962442, alpha: 1)))
                        .cornerRadius(10)
                })
            }
            .padding(.vertical)
            
            Text("Terms of Use  |  Privacy Policy")
                .foregroundColor(.gray)
                .font(.system(size: 12))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
