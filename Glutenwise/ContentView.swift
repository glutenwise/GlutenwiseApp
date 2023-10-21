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
            ZStack {
                Image("restaurant")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaledToFit()
                    .position(x: 187.5, y: 110)
//                    .overlay(Text("RESTAURANTS")
//                        .font(.largeTitle)
//                        .fontWeight(.bold)
//                        .foregroundColor(Color.white), alignment: .top)
                VStack {
                    Image("blueBadge")
                    Image("greenBadge")
                    Image("yellowBadge")
                    Image("redBadge")
                }
                Text("RESTAURANTS")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding()
                    .position(x: 140, y: 180)
                Menu("Filter") {
                    Text("BADGE")
                    Text("PRICE")
                    Text("DISTANCE")
            }
                
            }
            
        }
            
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
