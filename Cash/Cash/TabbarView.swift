//
//  TabbarView.swift
//  Cash
//
//  Created by 大谷悦志 on 2021/07/29.
//

import SwiftUI

struct TabbarView: View {
    @State var title: String = "Home"
    
    init() {
        UITabBar.appearance().barTintColor = UIColor.white
    }
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 24, height: 24, alignment: .center)
            }
            .padding()
            
            TabView(selection: $title) {
                Text("home")
                    .tabItem {
                        Image(systemName: "house.fill")
                    }
                    .tag("Home")
                
                TabPageView()
                    .tabItem {
                        Image(systemName: "creditcard.fill")
                    }
                    .tag("Cash Card")
                
                Text("hogehoge1")
                    .tabItem {
                        Image(systemName: "dollarsign.circle.fill")
                    }
                    .tag("hogehgoe1")
                
                Text("hogehoge2")
                    .tabItem {
                        Image(systemName: "doc.circle.fill")
                    }
                    .tag("hogehgoe2")
                
                Text("hogehoge3")
                    .tabItem {
                        Image(systemName: "stopwatch.fill")
                    }
                    .tag("hogehgoe3")
            }
            .accentColor(.black)
        
        }
        .padding()
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView()
    }
}
