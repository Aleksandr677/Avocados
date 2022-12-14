//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Христиченко Александр on 2022-11-10.
//

import SwiftUI

struct RecipeCardView: View {
    //MARK: - PROPERTIES
    var recipe: Recipe
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModal: Bool = false
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            //MARK: - CARD IMAGE
            if #available(iOS 15.0, *) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                    .overlay {
                        HStack {
                            Spacer()
                            
                            VStack {
                                Image(systemName: "bookmark")
                                    .font(Font.title.weight(.light))
                                    .foregroundColor(Color.white)
                                    .imageScale(.small)
                                .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                                .padding(.trailing, 20)
                                .padding(.top, 22)
                                
                                Spacer()
                            }
                        }
                    }
            } else {
                // Fallback on earlier versions
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
            }
            
            VStack(alignment: .leading, spacing: 12) {
                //Title
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(1)
                
                //Headline
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(Color.gray)
                    .italic()
                
                //Rates
                RecipeRatingView(recipe: recipe)
                
                //Cooling
                RecipeCookingView(recipe: recipe)
            }
            .padding()
            .padding(.bottom, 12)
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight") ,radius: 8, x: 0, y: 0)
        .onTapGesture {
            hapticImpact.impactOccurred()
            showModal = true
        }
        .sheet(isPresented: $showModal) {
            RecipeDetailView(recipe: recipe)
        }
    }
}

//MARK: - PREVIEW
struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
    }
}
