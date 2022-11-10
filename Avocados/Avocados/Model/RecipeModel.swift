//
//  RecipeModel.swift
//  Avocados
//
//  Created by Христиченко Александр on 2022-11-10.
//

import SwiftUI

//MARK: - RECIPE

struct Recipe: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var cooking: Int
    var instructions: [String]
    var ingredients: [String]
}
