//
//  EducationPageView.swift
//  Glutenwise
//
//  Created by grace on 10/28/23.
//

import SwiftUI

struct EducationPageView: View {
    var body: some View {
        //education page
        ScrollViewReader { proxy in
            ScrollView {
                VStack {
                    Image("educationImage")
                    Text("""
By Robert H. Shmerling, MD, Senior Faculty Editor, Harvard
Health Publishing; Editorial Advisory Board Member, Harvard Health Publishing. April 14, 2021
""")
                    .font(.caption)
                    .fontWeight(.light)
                    .foregroundColor(Color.black)
                    .padding()
                }
                
                Text("""
Thinking of going gluten-free? If you are, you have plenty of company. Interest and enthusiasm around gluten-free diets continues to grow dramatically. You can find plenty of books, diet experts, and advertisements supporting the idea. But does it really improve your health or sense of well-being? Or might it just be a widely amplified health fad?

What is gluten?
Gluten is a protein found in many grains, including wheat, barley, and rye. It's common in foods such as bread, pasta, pizza, and cereal. Gluten provides no essential nutrients.

People with celiac disease have an immune reaction that is triggered by eating gluten. They develop inflammation and damage in their intestinal tracts and other parts of the body when they eat foods containing gluten. Current estimates suggest that up to 1% of the population has this condition. If you do have celiac disease, a gluten-free diet is necessary to eliminate the inflammation and the symptoms.  Grocery stores and restaurants routinely offer gluten-free options that rival conventional foods in taste and quality; in years past, it was much harder to maintain a gluten-free diet.

So, maybe it should come as no surprise that even people who haven’t been diagnosed with celiac disease might embrace the gluten-free mantra. And embrace it they have (although no research supports that): estimates suggest that 20% to 30% of the US population follows a gluten-free diet (or has done so in the past).

Who should avoid gluten?
As mentioned, people with celiac disease avoid sickness and maintain much better health if they follow a gluten-free diet. For them, a gluten-free diet is nothing short of essential.

And then there are people described as gluten-sensitive. Their tests for celiac disease are negative (normal), yet whenever they eat food containing gluten, they experience symptoms like bloating, diarrhea, or crampy abdominal pain. One cause is wheat allergy, a disorder that can be diagnosed by skin testing. But for many others, the diagnosis remains uncertain. Some have begun calling this non-celiac gluten hypersensitivity, a poorly defined condition about which we have much to learn.

Avoiding gluten makes sense for people with celiac disease, wheat allergy, or those who feel unwell whenever they consume gluten.

What about everyone else?
There is no compelling evidence that a gluten-free diet will improve health or prevent disease if you don't have celiac disease and can eat gluten without trouble.  Of course, future research could change this. We may someday learn that at least some people without celiac disease or symptoms of intestinal disease are better off avoiding gluten.

Why are gluten-free diets so popular?
I suspect the popularity relates to a combination of factors:
Intuition: It just seems like a good idea.
The inflammation connection: Since gluten triggers inflammation in people with celiac disease, maybe avoiding it will reduce harmful forms of inflammation in me (though there’s no evidence supporting this for people without celiac disease).
Logic: If gluten is bad for people with celiac disease, maybe it's bad for me.
Celebrity endorsement: If eliminating gluten is encouraged by someone I admire, maybe I should give it a try.
Anecdote: Testimonials can be powerful. Hearing about someone with bothersome symptoms that finally went away after eliminating gluten is difficult to ignore.
Marketing: Never underestimate the power of persuasion. Those selling gluten-free products or books about gluten-free diets can be convincing, even if there's little science to back it up.
Is there a downside to going gluten-free? Before you buy into the gluten-free life, buyer beware! It may not help, it may cause trouble, and it’s likely to cost more.

While many people think gluten-free diets are more nutritious and contain more minerals and vitamins than conventional foods, the opposite is often true. Gluten-free foods are commonly less fortified with folic acid, iron, and other nutrients than regular foods containing gluten. And gluten-free foods tend to have less fiber and more sugar and fat. Several studies have found a trend toward weight gain and obesity among those who follow a gluten-free diet (including those with celiac disease).

Meanwhile, gluten-free foods tend to be more expensive than conventional foods. It reminds me of the organic food option: People are often willing to pay much higher prices for foods they think are healthier. The problem is that there is little or no proof that these foods are actually better for you.

What's a gluten-conscious person to do?
If you feel well and have no digestive symptoms, enjoy your good health! And stop worrying so much about gluten.

But if you have symptoms that might be related to gluten, or any significant and unexplained symptoms, talk to your doctor. Symptoms of celiac disease or gluten sensitivity include

- diarrhea
- abdominal pain
- weight loss and poor appetite
- bloating or feeling full
- an itchy rash
- growth delay (in children).

There are reliable tests to diagnose celiac disease. These include genetic tests, blood tests that detect certain antibodies, and intestinal biopsies. The results can help you understand which, if any, foods you should avoid. You may learn that you can eat anything you like. You may learn that it's lactose (the sugar in milk), not gluten, that's causing you trouble. Or you may turn out to have another common condition that's unrelated to gluten, such as Crohn's disease, an ulcer, or irritable bowel syndrome.

The bottom line
We are undoubtedly in a time of heightened gluten awareness. Is that a good thing? It is if you have celiac disease. I think it's a major step forward that people who truly need to avoid gluten can do so more easily than in the past, as more gluten-free foods are now available and labels more clearly identify foods containing gluten. But the dangers of gluten have probably been overstated — and oversold. Don't be swayed by an elite athlete or influencer to restrict your diet when there's no medical reason to do so. It's up to you and your doctor — not a celebrity or a book author — to take care of your health.
""")
                .padding()
                
            }
            
        }
        
    }
}

struct EducationPageView_Previews: PreviewProvider {
    static var previews: some View {
        EducationPageView()
    }
}
