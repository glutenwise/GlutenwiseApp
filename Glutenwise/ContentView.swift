//
//  ContentView.swift
//  Glutenwise
//
//  Created by Andy on 10/20/23.
//

import SwiftUI

/** Restaurant struct with attributes about a restaurant. **/
struct Restaurant: Identifiable {
    let id = UUID()
    var name: String
    var cuisine: String
    var price: Int // an integer from 1 to 3, where 1 is less expensive and 3 is more expensive
    var badge: BadgeType
    var address: String
    var rating: Double // a scale from 1 to 5, worst to best overall
}

/** BadgeType is an enum that describes badges and their respective gluten-free friendliness. **/
enum BadgeType: String, CaseIterable {
    case blue = "blueBadge"
    case green = "greenBadge"
    case yellow = "yellowBadge"
    case red = "redBadge"
    case gray = "grayBadge"
}

/** Restaurants is a constant that defines many different restaurants with various attribute values. **/
var restaurants: [Restaurant] = [
    Restaurant(name: "Thai Spice Haven", cuisine: "Thai", price: 1, badge: .gray, address: "505 Pine Dr", rating: 4.9),
    Restaurant(name: "Pasta Paradise", cuisine: "Italian", price: 2, badge: .red, address: "123 Main St", rating: 4.5),
    Restaurant(name: "Taco Tango", cuisine: "Mexican", price: 3, badge: .green, address: "456 Elm St", rating: 4.2),
    Restaurant(name: "Sushi Sensation", cuisine: "Japanese", price: 1, badge: .yellow, address: "789 Oak St", rating: 4.8),
    Restaurant(name: "Spicy Curry House", cuisine: "Indian", price: 2, badge: .green, address: "101 Pine Ave", rating: 4.0),
    Restaurant(name: "Chopsticks & Noodles", cuisine: "Chinese", price: 3, badge: .yellow, address: "202 Maple Ave", rating: 4.7),
    Restaurant(name: "Mediterranean Delights", cuisine: "Mediterranean", price: 1, badge: .green, address: "303 Cedar Rd", rating: 4.6),
    Restaurant(name: "La Baguette Bistro", cuisine: "French", price: 2, badge: .red, address: "404 Oak Ln", rating: 4.4),
    Restaurant(name: "Opa Greek Taverna", cuisine: "Greek", price: 2, badge: .green, address: "606 Elm Ct", rating: 3.9),
    Restaurant(name: "The Steakhouse Grill", cuisine: "Steakhouse", price: 3, badge: .blue, address: "707 Maple Blvd", rating: 4.3)
]

/** RestaurantRow formats how a row should look for a particular restaurant. **/
struct RestaurantRow: View {
    @State var restaurant: Restaurant
    @State private var showRatingModal = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            // First Line: Restaurant Name and Badge
            HStack {
                Text(restaurant.name)
                    .font(.title3)
                    .fontWeight(.bold)
                Spacer()
                Button(action: { showRatingModal.toggle() }) {
                    Image(restaurant.badge.rawValue)
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                .sheet(isPresented: $showRatingModal) {
                    RatingModal(passedInRestaurant: $restaurant)
                }
            }
            
            // Second Line: Cuisine, Price, and Rating
            HStack {
                Text("Cuisine: \(restaurant.cuisine)")
                    .font(.subheadline)
                Spacer()
                Text("Price: \(String(repeating: "$", count: restaurant.price))")
                    .font(.subheadline)
                Spacer()
                Text("Rating: \(String(format: "%.1f", restaurant.rating))")
                    .font(.subheadline)
            }
            
            // Third Line: Address
            Text("Address: \(restaurant.address)")
                .font(.subheadline)
        }
        .padding(8)
    }
}

/** ContentView is the content that is shown, including logo, restaurant banner, filter, and list of restaurants. **/
struct ContentView: View {
    @State private var showBadgeDescriptionModal = false
    @State private var showRecipesHomePageView = false
    @State private var showEducationPageView = false
    
    var body: some View {
        NavigationView {
            VStack {
                Image("glutenwiseLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 170)
                Button(action: { showBadgeDescriptionModal.toggle() } ) {
                    Image("restaurant")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaledToFit()
                }
                .sheet(isPresented: $showBadgeDescriptionModal) {
                    BadgeDescriptionModal()
                }
                
//                Menu("Filter") {
//                    Text("BADGE")
//                    Text("PRICE")
//                }
                List {
                    ForEach(restaurants) { r in
                        RestaurantRow(restaurant: r)
                    }
                }
                
                HStack {
                    Spacer()
                    // Recipes
                    Button(action: { showRecipesHomePageView = true } ) {
                        Image(systemName: "frying.pan")
                    }
                    NavigationLink("", destination: RecipesHomePageView(), isActive: $showRecipesHomePageView)
                    
                    Spacer()
                    // Education
                    Button(action: { showEducationPageView = true } ) {
                        Image(systemName: "lightbulb")
                    }
                    NavigationLink("", destination: EducationPageView(), isActive: $showEducationPageView)
                    
                    Spacer()
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
