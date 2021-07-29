//
//  TabPageView.swift
//  Cash
//
//  Created by 大谷悦志 on 2021/07/29.
//

import SwiftUI

struct TabPageView: View {
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .black
        UIPageControl.appearance().pageIndicatorTintColor = .lightGray
    }
    
    var body: some View {
        VStack {
            TabView {
                Text("hogehoge1")
                
                Text("hogehoge2")
                
                Text("hogehoge3")
                    
                ContentView()
            }
            .tabViewStyle(PageTabViewStyle())
            
            Button(action: {}, label: {
                Text("Get Free Cash Card")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(#colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)))
                    .cornerRadius(25)
            })
        }
        .padding()
    }
}

struct TabPageView_Previews: PreviewProvider {
    static var previews: some View {
        TabPageView()
    }
}
