//
//  FirstView.swift
//  Gucci
//
//  Created by Etsushi Otani on 2021/08/19.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        Image("shark")
            .resizable()
            .frame(maxWidth: .infinity)
            .aspectRatio(contentMode: .fit)
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
