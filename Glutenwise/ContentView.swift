//
//  ContentView.swift
//  Glutenwise
//
//  Created by Andy on 10/20/23.
//

import SwiftUI

struct Restaurant: Identifiable {
    let id = UUID()
    var name: String
    var cuisine: String
    var price: Int // an integer from 1 to 3, where 1 is less expensive and 3 is more expensive
    var badge: BadgeType
    var address: String
    var rating: Double // a scale from 1 to 5, worst to best overall
}

enum BadgeType: String, CaseIterable {
    case blue = "blueBadge"
    case green = "greenBadge"
    case yellow = "yellowBadge"
    case red = "redBadge"
}

let restaurants: [Restaurant] = [
    Restaurant(name: "Pasta Paradise", cuisine: "Italian", price: 2, badge: .red, address: "123 Main St", rating: 4.5),
    Restaurant(name: "Taco Tango", cuisine: "Mexican", price: 3, badge: .green, address: "456 Elm St", rating: 4.2),
    Restaurant(name: "Sushi Sensation", cuisine: "Japanese", price: 1, badge: .yellow, address: "789 Oak St", rating: 4.8),
    Restaurant(name: "Spicy Curry House", cuisine: "Indian", price: 2, badge: .green, address: "101 Pine Ave", rating: 4.0),
    Restaurant(name: "Chopsticks & Noodles", cuisine: "Chinese", price: 3, badge: .yellow, address: "202 Maple Ave", rating: 4.7),
    Restaurant(name: "Mediterranean Delights", cuisine: "Mediterranean", price: 1, badge: .green, address: "303 Cedar Rd", rating: 4.6),
    Restaurant(name: "La Baguette Bistro", cuisine: "French", price: 2, badge: .red, address: "404 Oak Ln", rating: 4.4),
    Restaurant(name: "Thai Spice Haven", cuisine: "Thai", price: 1, badge: .blue, address: "505 Pine Dr", rating: 4.9),
    Restaurant(name: "Opa Greek Taverna", cuisine: "Greek", price: 2, badge: .green, address: "606 Elm Ct", rating: 3.9),
    Restaurant(name: "The Steakhouse Grill", cuisine: "Steakhouse", price: 3, badge: .blue, address: "707 Maple Blvd", rating: 4.3)
]

struct ContentView: View {
    var body: some View {
        
        VStack {
            Text("glutenwise LOGO")
            Image("restaurant")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .scaledToFit()
            Menu("Filter") {
                Text("BADGE")
                Text("PRICE")
            }
            List {
                ForEach(restaurants) { r in
                    Text(r.name)
                }
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
