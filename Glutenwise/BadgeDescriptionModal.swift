//
//  BadgeDescriptionModal.swift
//  Glutenwise
//
//  Created by grace on 10/28/23.
//

import SwiftUI

struct BadgeDescriptionModal: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
//            Button(action: { dismiss() } ) {
//                Text("Close")
//                    .padding(.bottom, 30)
//                    .padding(.trailing, 260)
//
//            }
           
            // Blue Badge
            HStack() {
                Image("blueBadge")
                    .resizable()
                    .frame(width: 40, height: 40)
                Text("Certified Gluten Free")
                    .font(.title2)
            }
            Text("These restaurants strictly adhere to the highest level of gluten-free standards.")
                .padding([.leading, .trailing], 30)

            // Green Badge
            HStack() {
                Image("greenBadge")
                    .resizable()
                    .frame(width: 40, height: 40)
                Text("Extensive")
                    .font(.title2)
            }
            Text("50% of their menu items are gluten-free or can be modified to be gluten-free.")
                .padding([.leading, .trailing], 30)
            
            // Yellow Badge
            HStack() {
                Image("yellowBadge")
                    .resizable()
                    .frame(width: 40, height: 40)
                Text("Moderate")
                    .font(.title2)
            }
            Text("25-50% of their menu items are gluten-free or can be made GF upon request.")
                .padding([.leading, .trailing], 30)
            
            // Red Badge
            HStack() {
                Image("redBadge")
                    .resizable()
                    .frame(width: 40, height: 40)
                Text("Limited")
                    .font(.title2)
            }
            Text("0-25% of their menu items are gluten-free. It has scarce gluten-free options.")
                .padding([.leading, .trailing], 30)
        }
    }
}

struct BadgeDescriptionModal_Previews: PreviewProvider {
    static var previews: some View {
        BadgeDescriptionModal()
    }
}
