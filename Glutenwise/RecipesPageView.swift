//
//  RecipesPageView.swift
//  Glutenwise
//
//  Created by grace on 10/28/23.
//

import SwiftUI

struct RecipesPageView: View {
    var body: some View {
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

struct RecipesPageView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesPageView()
    }
}
