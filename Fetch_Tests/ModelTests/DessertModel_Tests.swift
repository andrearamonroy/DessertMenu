//
//  DessertModel_Tests.swift
//  Fetch_Tests
//
//  Created by Andrea on 7/9/23.
//

import XCTest
@testable import Fetch

final class DessertModel_Tests: XCTestCase {
    
    func testMealModel() {
        // Given
        let mealModel = MealModelMocks.mockMealModel
        
        // Then
        XCTAssertEqual(mealModel.meals.count, 2)
        
        let firstMeal = mealModel.meals[0]
        XCTAssertEqual(firstMeal.id, "1")
        XCTAssertEqual(firstMeal.title, "Chocolate Cake")
        XCTAssertEqual(firstMeal.image, "chocolate_cake.jpg")
        
        let secondMeal = mealModel.meals[1]
        XCTAssertEqual(secondMeal.id, "2")
        XCTAssertEqual(secondMeal.title, "Apple Pie")
        XCTAssertEqual(secondMeal.image, "apple_pie.jpg")
    }
    
}


