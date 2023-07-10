//
//  DessertDetailModelMock.swift
//  Fetch
//
//  Created by Andrea on 7/10/23.
//

import Foundation

struct MockDessertDetailModel {
    static let mockIngredientModel = DessertIngredientModel(
        id: "1",
        title: "Chocolate Cake",
        strInstructions: "Instructions",
        strIngredient1: "Ingredient 1",
        strIngredient2: "Ingredient 2",
        strIngredient3: "Ingredient 3",
        strIngredient4: "Ingredient 4",
        strIngredient5: "Ingredient 5",
        strIngredient6: "Ingredient 6",
        strIngredient7: "Ingredient 7",
        strIngredient8: "Ingredient 8",
        strIngredient9: "Ingredient 9",
        strIngredient10: "Ingredient 10",
        strIngredient11: "Ingredient 11",
        strIngredient12: "Ingredient 12",
        strIngredient13: "Ingredient 13",
        strIngredient14: "Ingredient 14",
        strIngredient15: "Ingredient 15",
        strIngredient16: "Ingredient 16",
        strIngredient17: "Ingredient 17",
        strIngredient18: "Ingredient 18",
        strIngredient19: "Ingredient 19",
        strIngredient20: "Ingredient 20",
        strMeasure1: "Measure 1",
        strMeasure2: "Measure 2",
        strMeasure3: "Measure 3",
        strMeasure4: "Measure 4",
        strMeasure5: "Measure 5",
        strMeasure6: "Measure 6",
        strMeasure7: "Measure 7",
        strMeasure8: "Measure 8",
        strMeasure9: "Measure 9",
        strMeasure10: "Measure 10",
        strMeasure11: "Measure 11",
        strMeasure12: "Measure 12",
        strMeasure13: "Measure 13",
        strMeasure14: "Measure 14",
        strMeasure15: "Measure 15",
        strMeasure16: "Measure 16",
        strMeasure17: "Measure 17",
        strMeasure18: "Measure 18",
        strMeasure19: "Measure 19",
        strMeasure20: "Measure 20"
    )
    
    static let mockDessertDetailModel = DessertDetailModel(meals: [mockIngredientModel])
}
