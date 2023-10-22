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
      
        ScrollViewReader { proxy in
            Text("Glutenwise")
                .font(.largeTitle)
                .fontWeight(.ultraLight)
                .position(x: 175, y: 10)
            ZStack {
                Image("food1Image")
                    .resizable()
                    .frame(width: 400, height: 450)
                    .position(x: 180, y: -60)
                Text("Grilled Chicken with Asparagus and Quinoa")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .position(x: 160, y: 110)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
