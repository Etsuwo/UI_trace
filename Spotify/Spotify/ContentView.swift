//
//  ContentView.swift
//  Spotify
//
//  Created by Etsushi Otani on 2021/09/09.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sliderVal: Double = 0
    
    var body: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Image(systemName: "chevron.down")
                        .foregroundColor(.gray)
                    Spacer()
                    Text("Sam Smith")
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    Spacer()
                    Image(systemName: "")
                        .foregroundColor(.gray)
                }
                Spacer()
                Image("unsplash")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 300, alignment: .center)
                    .clipped()
                Spacer()
                HStack {
                    VStack(alignment: .leading) {
                        Text("Stay With Me")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Text("Sam Smith")
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    Image(systemName: "heart")
                        .foregroundColor(.gray)
                }
                .padding(.vertical)
                Slider(value: $sliderVal)
                    .accentColor(.gray)
                HStack {
                    Text("0.01")
                        .foregroundColor(.gray)
                        .font(.system(size: 12))
                    Spacer()
                    Text("2.50")
                        .foregroundColor(.gray)
                        .font(.system(size: 12))
                }
                HStack {
                    Image(systemName: "shuffle")
                        .foregroundColor(.gray)
                    Spacer()
                    Image(systemName: "backward.end.fill")
                        .resizable()
                        .frame(width: 25, height: 25, alignment: .center)
                        .foregroundColor(.white)
                    
                    Spacer()
                    Image(systemName: "play.fill")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                        .foregroundColor(.white)
                    Spacer()
                    Image(systemName: "forward.end.fill")
                        .resizable()
                        .frame(width: 25, height: 25, alignment: .center)
                        .foregroundColor(.white)
                    Spacer()
                    Image(systemName: "repeat")
                        .foregroundColor(.gray)
                    
                }
                .padding(.vertical)
                
                HStack {
                    Image(systemName: "tv.and.hifispeaker.fill")
                        .foregroundColor(.gray)
                    Spacer()
                    Image(systemName: "text.insert")
                        .foregroundColor(.gray)
                }
            }
            .padding()
            .background(Color.black)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
