//
//  ContentView.swift
//  Cash
//
//  Created by 大谷悦志 on 2021/07/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("draw")
                .resizable()
                .frame(height: 300, alignment: .center)
                .frame(maxWidth: .infinity)
            
            Text("Bank With it")
                .font(.title)
                .fontWeight(.bold)
            
            Text("Access banking features like direct deposit, ATM withdrawals, and more")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.horizontal)
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
