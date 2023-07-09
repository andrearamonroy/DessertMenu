//
//  DessertDetailModelMock.swift
//  Fetch_Tests
//
//  Created by Andrea on 7/9/23.
//

import Foundation
@testable import Fetch

struct DessertDetailModelMock: Codable, Hashable {
    let meals: [DessertIngredientModelMock]
}
struct DessertIngredientModelMock: Codable, Identifiable, Hashable {
    let id, title, strInstructions: String
    //ingredients
    let strIngredient1, strIngredient2, strIngredient3, strIngredient4: String?
    //measurements
    let strMeasure1, strMeasure2, strMeasure3, strMeasure4: String?
    
    enum CodingKeys: String, CodingKey {
        case id = "idMeal"
        case title = "strMeal"
        case strInstructions
        //ingredients
        case strIngredient1, strIngredient2, strIngredient3, strIngredient4
        //measurements
        case strMeasure1, strMeasure2, strMeasure3, strMeasure4
        
    }
}
