//
//  DessertModel.swift
//  Fetch
//
//  Created by Andrea on 7/3/23.
//

import Foundation

// MARK: - 
struct MealModel: Codable, Hashable {
    let meals: [DessertModel]
}

// MARK: -
struct DessertModel: Codable, Identifiable, Hashable {
    var id: String
    let title: String
    let image: String

    enum CodingKeys: String, CodingKey {
        case id = "idMeal"
        case title = "strMeal"
        case image = "strMealThumb"
    }
}
