//
//  ContentView.swift
//  Glutenwise
//
//  Created by Andy on 10/20/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Text("glutenwise LOGO")
            Image("restaurant")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .scaledToFit()
                .position(x: 187.5, y: 110)
            Menu("Filter") {
                Text("BADGE")
                Text("PRICE")
                Text("DISTANCE")
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
