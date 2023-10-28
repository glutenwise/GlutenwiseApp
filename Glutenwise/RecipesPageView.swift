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
            Text("  Ingredients")
                .font(.title)
                .fontWeight(.semibold)
                .position(x:80, y:-250)
        Text("""
             - 1 pound chicken breast cut in strips
             - salt to taste
             - 1 teaspoon lemon juice
             - 1 teaspoons smoked paprika
             - 1.5 cups quinoa
             - 1 tablespoon olive oil
             - 2 cloves garlic chopped
             - 3 cups water or a little bit less
             - 8 ounces mushrooms sliced
             - 1 tablespoon olive oil
             - 1 pound asparagus cut in 2 inches
             - 3 cloves garlic chopped
             - bunch of fresh basil thinly sliced
             - 1-2 tablespoon lemon juice
""")
        .position(x:100, y:-100)
        Text("Instructions")
                .font(.title)
                .fontWeight(.semibold)
                .position(x: 80, y: 0)
            
        Text("""
1.) In a bowl marinate chicken with salt, 1 teaspoon lemon juice and paprika. Set aside.

2.) In a pot heat 1 tablespoon olive oil and add
2 cloves chopped garlic. Cook until just
aromatic and add quinoa. Cook 1-2 minutes
until lightly toasted. Add water. Bring to a boil. Reduce heat and simmer covered for 20
minutes or until cooked through.

3.) In a pan heat 1 tablespoon olive oil and add mushrooms in single layer. Do not crowd the
pan and cook them in batches in you have to. Cook on each side until lightly browned and
set aside. In the same pan heat 1 tablespoon olive oil and add chicken in single layer. Cook until lightly browned on each side and remove.

4.) To same pan add asparagus and garlic.
Add more oil if needed. Cook until asparagus
is cooked through and lightly softened.

5.) In a large bowl combine quinoa, chicken, asparagus, garlic and mushrooms, Mix. Add
fresh basil, lemon juice and more oil if mixture is dry.
""")
    
        .position(x: 185, y: 270)
            Text("Comments")
                    .font(.title)
                    .fontWeight(.semibold)
                    .position(x: 80, y: 0)
            Text("Anonymous User 191                       10/8/2023")
            Text("Wow! This perfect recipe is both healthy and delicious. ")
                .fontWeight(.light)
                .font(.caption)
                .foregroundColor(Color.gray)
                .position(x:   175, y: 0)
            
        }
        }
    }


struct RecipesPageView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesPageView()
    }
}
