//
//  FirstView.swift
//  SeatGeek
//
//  Created by 大谷悦志 on 2021/08/12.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        VStack {
            Image("image")
                .resizable()
                .frame(width: 300, height: 300, alignment: .center)
                .padding()
            Text("If they're there, we'll find 'em")
                .fontWeight(.bold)
                .font(.title)
            Text("SeatGeek bring together ticket from hundreds of sites to save you time and money.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding()
                .padding(.horizontal)
        }
        
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
