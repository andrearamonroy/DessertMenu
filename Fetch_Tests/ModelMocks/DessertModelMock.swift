//
//  DessertModelMock.swift
//  Fetch_Tests
//
//  Created by Andrea on 7/9/23.
//

import Foundation
@testable import Fetch

struct MealModelMocks {
    static let mockMealModel: MealModel = {
        let dessert1 = DessertModel(id: "1", title: "Chocolate Cake", image: "chocolate_cake.jpg")
        let dessert2 = DessertModel(id: "2", title: "Apple Pie", image: "apple_pie.jpg")
        
        let mealModel = MealModel(meals: [dessert1, dessert2])
        return mealModel
    }()
}
