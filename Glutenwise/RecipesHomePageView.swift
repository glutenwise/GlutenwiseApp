//
//  RecipesHomePageView.swift
//  Glutenwise
//
//  Created by Andy on 10/29/23.
//

import SwiftUI
//Sautéed Apples
struct RecipesHomePageView: View {
@State private var showBadgeDescriptionModal = false
@State private var showRecipesHomePageView = false
@State private var showEducationPageView = false
    var body: some View {
        ScrollViewReader { proxy in
            ScrollView {
                VStack {
                    Image("glutenwiseLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 170)
                    Image("recipes")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaledToFit()
                            //displays the banner for the page (greek stuffed peppers)
                                    VStack {
                                    Text("Trending Recipes")
                                            .font(.title)
                                            .fontWeight(.heavy)
                                            .padding()
                                            .multilineTextAlignment(.leading)
                                            .padding(.bottom, -10)
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
                                            .padding(.top,-35)
                                    }
                                }
                //displays recipes in the popular recipes section in a horizontal row
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
                //displays recipes in the dinner delicacies section in a horizontal row
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
                //displays the horizontal columns of recipes for the quick and easy recipes section
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
//                //displays home bar for navigation purposes
//                HStack {
//                    Spacer()
//                    // Recipes
//                    Button(action: { showRecipesHomePageView = true } ) {
//                        Image(systemName: "frying.pan")
//                    }
//                    NavigationLink("", destination: RecipesHomePageView(), isActive: $showRecipesHomePageView)
//
//                    Spacer()
//                    // Education
//                    Button(action: { showEducationPageView = true } ) {
//                        Image(systemName: "lightbulb")
//                    }
//                    NavigationLink("", destination: EducationPageView(), isActive: $showEducationPageView)
//
//                    Spacer()
//                }
            }
        }
    }
}


struct RecipesHomePageView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesHomePageView()
    }
}


