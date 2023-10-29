//
//  RatingModal.swift
//  Glutenwise
//
//  Created by grace on 10/28/23.
//

import SwiftUI

struct RatingModal: View {
    @State var selectedBadgeType: BadgeType? = nil
    @State private var description: String = ""
    @Environment(\.dismiss) var dismiss
    @State var passedInRestaurant: Restaurant
    
    var body: some View {
        VStack {
            Text("Select a badge:")
                .font(.title)
            HStack {
                Button(action: { selectedBadgeType = .blue } ) {
                    Image("blueBadge")
                }
                Button(action: { selectedBadgeType = .green } ) {
                    Image("greenBadge")
                }
                Button(action: { selectedBadgeType = .yellow } ) {
                    Image("yellowBadge")
                }
                Button(action: { selectedBadgeType = .red } ) {
                    Image("redBadge")
                }
            }
            
            Text("Write a description:")
                .font(.title)
            TextField(
                    "Type your description!",
                    text: $description
            )
                .border(.secondary)
                .padding([.leading, .trailing], 50)
            
            Button("Submit") {
                print("hello")
                passedInRestaurant.badge = .blue
                print("updatedRestaurant: \(passedInRestaurant)")
                dismiss()
            }
                .buttonStyle(.borderedProminent)
                .padding()
        }
    }
}

//struct RatingModal_Previews: PreviewProvider {
//    static var previews: some View {
//        RatingModal()
//    }
//}
