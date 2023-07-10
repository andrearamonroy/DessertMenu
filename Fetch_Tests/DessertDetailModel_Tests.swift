//
//  DessertDetailModel_Tests.swift
//  Fetch_Tests
//
//  Created by Andrea on 7/10/23.
//

import XCTest
@testable import Fetch

final class DessertDetailModel_Tests: XCTestCase {
    
    func testDessertDetailModel() {
        // mock dessert ingredient model
        let mockDessertIngredientModel = DessertIngredientModel(
            id: "1",
            title: "Chocolate Cake",
            strInstructions: "Instructions",
            strIngredient1: "Ingredient 1",
            strIngredient2: "Ingredient 2",
            strIngredient3: "Ingredient 3",
            strIngredient4: nil,
            strIngredient5: nil,
            strIngredient6: nil,
            strIngredient7: nil,
            strIngredient8: nil,
            strIngredient9: nil,
            strIngredient10: nil,
            strIngredient11: nil,
            strIngredient12: nil,
            strIngredient13: nil,
            strIngredient14: nil,
            strIngredient15: nil,
            strIngredient16: nil,
            strIngredient17: nil,
            strIngredient18: nil,
            strIngredient19: nil,
            strIngredient20: nil,
            strMeasure1: "Measure 1",
            strMeasure2: "Measure 2",
            strMeasure3: "Measure 3",
            strMeasure4: nil,
            strMeasure5: nil,
            strMeasure6: nil,
            strMeasure7: nil,
            strMeasure8: nil,
            strMeasure9: nil,
            strMeasure10: nil,
            strMeasure11: nil,
            strMeasure12: nil,
            strMeasure13: nil,
            strMeasure14: nil,
            strMeasure15: nil,
            strMeasure16: nil,
            strMeasure17: nil,
            strMeasure18: nil,
            strMeasure19: nil,
            strMeasure20: nil
        )
        
        //mock dessert detail model with the mock dessert ingredient model
        let mockDessertDetailModel = DessertDetailModel(meals: [mockDessertIngredientModel])
        
        // Test assertions for the mock dessert ingredient model
        XCTAssertEqual(mockDessertDetailModel.meals.count, 1)
        
        guard let dessertIngredientModel = mockDessertDetailModel.meals.first else {
            XCTFail("DessertIngredientModel is nil")
            return
        }
        
        XCTAssertEqual(dessertIngredientModel.id, "1")
        XCTAssertEqual(dessertIngredientModel.title, "Chocolate Cake")
        XCTAssertEqual(dessertIngredientModel.strInstructions, "Instructions")
        XCTAssertEqual(dessertIngredientModel.strIngredient1, "Ingredient 1")
        XCTAssertEqual(dessertIngredientModel.strIngredient2, "Ingredient 2")
        XCTAssertEqual(dessertIngredientModel.strIngredient3, "Ingredient 3")
        XCTAssertEqual(dessertIngredientModel.strIngredient4, nil)
        XCTAssertEqual(dessertIngredientModel.strIngredient5, nil)
        XCTAssertEqual(dessertIngredientModel.strIngredient6, nil)
        XCTAssertEqual(dessertIngredientModel.strIngredient7, nil)
        XCTAssertEqual(dessertIngredientModel.strIngredient8, nil)
        XCTAssertEqual(dessertIngredientModel.strIngredient9, nil)
        XCTAssertEqual(dessertIngredientModel.strIngredient10, nil)
        XCTAssertEqual(dessertIngredientModel.strIngredient11, nil)
        XCTAssertEqual(dessertIngredientModel.strIngredient12, nil)
        XCTAssertEqual(dessertIngredientModel.strIngredient13, nil)
        XCTAssertEqual(dessertIngredientModel.strIngredient14, nil)
        XCTAssertEqual(dessertIngredientModel.strIngredient15, nil)
        XCTAssertEqual(dessertIngredientModel.strIngredient16, nil)
        XCTAssertEqual(dessertIngredientModel.strIngredient17, nil)
        XCTAssertEqual(dessertIngredientModel.strIngredient18, nil)
        XCTAssertEqual(dessertIngredientModel.strIngredient19, nil)
        XCTAssertEqual(dessertIngredientModel.strIngredient20, nil)
        
        XCTAssertEqual(dessertIngredientModel.strMeasure1, "Measure 1")
        XCTAssertEqual(dessertIngredientModel.strMeasure2, "Measure 2")
        XCTAssertEqual(dessertIngredientModel.strMeasure3, "Measure 3")
        XCTAssertEqual(dessertIngredientModel.strMeasure4, nil)
        XCTAssertEqual(dessertIngredientModel.strMeasure5, nil)
        XCTAssertEqual(dessertIngredientModel.strMeasure6, nil)
        XCTAssertEqual(dessertIngredientModel.strMeasure7, nil)
        XCTAssertEqual(dessertIngredientModel.strMeasure8, nil)
        XCTAssertEqual(dessertIngredientModel.strMeasure9, nil)
        XCTAssertEqual(dessertIngredientModel.strMeasure10, nil)
        XCTAssertEqual(dessertIngredientModel.strMeasure11, nil)
        XCTAssertEqual(dessertIngredientModel.strMeasure12, nil)
        XCTAssertEqual(dessertIngredientModel.strMeasure13, nil)
        XCTAssertEqual(dessertIngredientModel.strMeasure14, nil)
        XCTAssertEqual(dessertIngredientModel.strMeasure15, nil)
        XCTAssertEqual(dessertIngredientModel.strMeasure16, nil)
        XCTAssertEqual(dessertIngredientModel.strMeasure17, nil)
        XCTAssertEqual(dessertIngredientModel.strMeasure18, nil)
        XCTAssertEqual(dessertIngredientModel.strMeasure19, nil)
        XCTAssertEqual(dessertIngredientModel.strMeasure20, nil)
    }
}



