//
//  RecipesHomePageView.swift
//  Glutenwise
//
//  Created by Andy on 10/29/23.
//

import SwiftUI
//Sautéed Apples
struct RecipesHomePageView: View {
    var body: some View {
        ScrollViewReader { proxy in
            ScrollView {
                VStack(spacing: 20){
                Text("glutenwise logo")
                                    VStack(spacing:-30){
                                    Text("Trending")
                                            .font(.title)
                                            .fontWeight(.heavy)
                                            .padding(.trailing, 35.0)
                                            .multilineTextAlignment(.leading)
                                        Image("greekStuffedPeppers")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 400, height: 200, alignment: .center)
                                            .clipped()
                                        Text("Greek Stuffed Peppers")
                                            .font(.headline)
                                            .fontWeight(.medium)
                                            .multilineTextAlignment(.center)
                                            .frame(width: 400, height: 100, alignment: .center)
                                    }
                                }
                Text("Popular Recipes")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding(.trailing, 120.0)
                    .multilineTextAlignment(.leading)
                    ScrollView(.horizontal) {
                        HStack(spacing: 15) {
                                VStack(spacing:-20){
                                    Image("potatoFrittata")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 200, height: 200, alignment: .center)
                                        .clipped()
                                    Text("Potato Frittata")      .font(.subheadline)
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                        .frame(width: 200, height: 100, alignment: .center)
            }
                            VStack(spacing:-20){
                                Image("roastedRedPepperVeganPastaImage")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 200, height: 200, alignment: .center)
                                    .clipped()
                                Text("Vegan Roasted Red Pepper Pasta")      .font(.subheadline)
                                    .fontWeight(.medium)
                                    .multilineTextAlignment(.center)
                                    .frame(width: 200, height: 100, alignment: .center)
        }
                            VStack(spacing:-20){
                                Image("greekLemonPotatoesImage")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 200, height: 200, alignment: .center)
                                    .clipped()
                                Text("Greek Lemon Potatoes")      .font(.subheadline)
                                    .fontWeight(.medium)
                                    .multilineTextAlignment(.center)
                                    .frame(width: 200, height: 100, alignment: .center)
        }

                    }
                }
                    Text("Dinner Delicacies")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding(.trailing, 120.0)
                    .multilineTextAlignment(.leading)
                        ScrollView(.horizontal) {
                            HStack(spacing: 15) {
                                    VStack(spacing:-20){
                                        Image("grilledSeaBassImage")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 200, height: 200, alignment: .center)
                                            .clipped()
                                        Text("Grilled Sea Bass")      .font(.subheadline)
                                            .fontWeight(.medium)
                                            .multilineTextAlignment(.center)
                                            .frame(width: 200, height: 100, alignment: .center)
                    }
                                VStack(spacing: -20) {
                                                        NavigationLink(destination: RecipesPageView()) {
                                                            Image("grilledChickenWithAsparagusandQuinoaImage")
                                                                .resizable()
                                                                .aspectRatio(contentMode: .fill)
                                                                .frame(width: 200, height: 200, alignment: .center)
                                                                .clipped()
                                                        }
                                                        Text("Grilled Chicken with Asparagus and Quinoa")
                                                            .font(.subheadline)
                                                            .fontWeight(.medium)
                                                            .multilineTextAlignment(.center)
                                                            .frame(width: 200, height: 100, alignment: .center)
                                                    }
                                VStack(spacing:-20){
                                    Image("beefRoastPotImage")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 200, height: 200, alignment: .center)
                                        .clipped()
                                    Text("Beef Pot Roast")
                                        .font(.subheadline)
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                        .frame(width: 200, height: 100, alignment: .center)
            }
                }
                    }
                    Text("Quick and Easy Recipes")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding(.trailing, 35.0)
                    .multilineTextAlignment(.leading)
                    ScrollView(.horizontal) {
                        ScrollView(.horizontal) {
                            HStack(spacing: 15) {
                                VStack(spacing:-20){
                                    Image("zucchiniPizzaBitesImage")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 200, height: 200, alignment: .center)
                                        .clipped()
                                    Text("Zucchini Pizza Bites")      .font(.subheadline)
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                        .frame(width: 200, height: 100, alignment: .center)
            }
                                VStack(spacing:-20){
                                        Image("chiaPuddingImage")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 200, height: 200, alignment: .center)
                                            .clipped()
                                        Text("Chia Pudding")      .font(.subheadline)
                                            .fontWeight(.medium)
                                            .multilineTextAlignment(.center)
                                            .frame(width: 200, height: 100, alignment: .center)
                    }
                                VStack(spacing:-20){
                                    Image("sautéedApplesImage")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 200, height: 200, alignment: .center)
                                        .clipped()
                                    Text("Sautéed Apples")      .font(.subheadline)
                                        .fontWeight(.medium)
                                        .multilineTextAlignment(.center)
                                        .frame(width: 200, height: 100, alignment: .center)
            }
                }
                        }
                    }
//                HStack {
//                    Spacer()
//                    // Recipes
//                    Button(action: { showRecipesPageView = true } ) {
//                        Image(systemName: "frying.pan")
//                    }
//                    NavigationLink("", destination: RecipesPageView(), isActive: $showRecipesPageView)
//
//                    Spacer()
//                    // Education
//                    Button(action: { showEducationPageView = true } ) {
//                        Image(systemName: "lightbulb")
//                    }
//                    NavigationLink("", destination: EducationPageView(), isActive: $showEducationPageView)
//
//                    Spacer()
//            }
            }
        }
    }
}


struct RecipesHomePageView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesHomePageView()
    }
}


