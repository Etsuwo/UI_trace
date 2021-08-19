//
//  ContentView.swift
//  Gucci
//
//  Created by Etsushi Otani on 2021/08/19.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .black
        UIPageControl.appearance().pageIndicatorTintColor = .lightGray
    }
    
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                TabView {
                    FirstView()
                    Text("Second View")
                    Text("Third View")
                    Text("Second View")
                    Text("Third View")
                }
                .tabViewStyle(PageTabViewStyle())
                
                HStack(alignment: .top) {
                    VStack {
                        Button(action: {}, label: {
                            Image(systemName: "chevron.backward")
                                .foregroundColor(Color.black)
                        })
                        
                    }
                    Spacer()
                    VStack {
                        Button(action: {}, label: {
                            Image(systemName: "bag")
                                .foregroundColor(Color.black)
                        })
                        Button(action: {}, label: {
                            Image(systemName: "star")
                                .foregroundColor(Color.black)
                        })
                        .padding(.vertical)
                        Button(action: {}, label: {
                            Image(systemName: "square.and.arrow.up")
                                .foregroundColor(Color.black)
                        })
                    }
                }
            }
            
            Text("Gucci")
                .fontWeight(.bold)
            Text("argly collared vest")
            Text("$1,100")
            
            HStack(spacing: 0) {
                Text("Select your size")
                    .foregroundColor(.gray)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                Divider()
                    .frame(width: 2)
                    .background(Color.gray)
                Button(action: {}, label: {
                    Image(systemName: "chevron.down")
                        .foregroundColor(Color.black)
                        .padding()
                })
            }
            .fixedSize(horizontal: false, vertical: true)
            .frame(maxWidth: .infinity)
            .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 2))
            
            .padding(.vertical)
            .padding(.top)
                
            HStack {
                Button(action: {}, label: {
                    Text("Pay")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .overlay(RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color.black, lineWidth: 2))
                })
                Button(action: {}, label: {
                    Text("Add to bag")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.black)
                        .cornerRadius(8.0)
                })
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
