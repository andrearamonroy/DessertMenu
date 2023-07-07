//
//  DessertDetailModel.swift
//  Fetch
//
//  Created by Andrea on 7/5/23.
//

import Foundation

// MARK: - DessertDetailModel
struct DessertDetailModel: Codable, Hashable {
    let meals: [DessertIngredientModel]
}

// MARK: - DessertIngredientModel
struct DessertIngredientModel: Codable, Identifiable, Hashable {
    let id, title, strInstructions: String
    let strIngredient1,strIngredient2,strIngredient3,strIngredient4 : String?
    let strIngredient5,strIngredient6,strIngredient7,strIngredient8 : String?
    let strIngredient9,strIngredient10,strIngredient11,strIngredient12 : String?
    let strIngredient13,strIngredient14,strIngredient15,strIngredient16 : String?
    let strIngredient17,strIngredient18,strIngredient19,strIngredient20 : String?
    
    let strMeasure1,strMeasure2,strMeasure3,strMeasure4 : String?
    let strMeasure5,strMeasure6,strMeasure7,strMeasure8 : String?
    let strMeasure9,strMeasure10,strMeasure11,strMeasure12 : String?
    let strMeasure13,strMeasure14,strMeasure15,strMeasure16 : String?
    let strMeasure17,strMeasure18,strMeasure19,strMeasure20 : String?
   
   
    
    enum CodingKeys: String, CodingKey {
        case id = "idMeal"
        case title = "strMeal"
        case strInstructions
        case strIngredient1,strIngredient2,strIngredient3,strIngredient4
        case strIngredient5,strIngredient6,strIngredient7,strIngredient8
        case strIngredient9,strIngredient10,strIngredient11,strIngredient12
        case strIngredient13,strIngredient14,strIngredient15,strIngredient16
        case strIngredient17,strIngredient18,strIngredient19,strIngredient20
        
        case strMeasure1,strMeasure2,strMeasure3,strMeasure4
        case strMeasure5,strMeasure6,strMeasure7,strMeasure8
        case strMeasure9,strMeasure10,strMeasure11,strMeasure12
        case strMeasure13,strMeasure14,strMeasure15,strMeasure16
        case strMeasure17,strMeasure18,strMeasure19,strMeasure20
        
    }
}
