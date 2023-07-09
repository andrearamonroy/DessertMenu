//
//  DessertDetailModel_Tests.swift
//  Fetch_Tests
//
//  Created by Andrea on 7/9/23.
//

import XCTest
@testable import Fetch

final class DessertDetailModel_Tests: XCTestCase {
    
    
    func testDessertDetailModelMock() {
        // Given
        let dessertIngredient1 = DessertIngredientModelMock(
            id: "1",
            title: "Chocolate Cake",
            strInstructions: "Instructions for Chocolate Cake",
            
            //ingredients
            strIngredient1: "Ingredient 1",
            strIngredient2: nil,
            strIngredient3: "Ingredient 3",
            strIngredient4: "Ingredient 4",
            
            // measurements
            strMeasure1: "Measure 1",
            strMeasure2: nil,
            strMeasure3: "Measure 3",
            strMeasure4: nil
        )
        
        let dessertIngredient2 = DessertIngredientModelMock(
            id: "2",
            title: "Apple Pie",
            strInstructions: "Instructions for Apple Pie",
            
            //ingredients
            strIngredient1: "Ingredient A",
            strIngredient2: "Ingredient B",
            strIngredient3: nil,
            strIngredient4: nil,
            
            // measurements
            strMeasure1: "Measure A",
            strMeasure2: "Measure B",
            strMeasure3: nil,
            strMeasure4: nil
            
        )
        
        let dessertDetailModelMock = DessertDetailModelMock(meals: [dessertIngredient1, dessertIngredient2])
        
        // Then
        XCTAssertEqual(dessertDetailModelMock.meals.count, 2)
        
        let firstDessertIngredient = dessertDetailModelMock.meals[0]
        XCTAssertEqual(firstDessertIngredient.id, "1")
        XCTAssertEqual(firstDessertIngredient.title, "Chocolate Cake")
        XCTAssertEqual(firstDessertIngredient.strInstructions, "Instructions for Chocolate Cake")
        XCTAssertEqual(firstDessertIngredient.strIngredient1, "Ingredient 1")
        XCTAssertNil(firstDessertIngredient.strIngredient2)
        XCTAssertEqual(firstDessertIngredient.strIngredient3, "Ingredient 3")
        XCTAssertEqual(firstDessertIngredient.strIngredient4, "Ingredient 4")
        
        
        let secondDessertIngredient = dessertDetailModelMock.meals[1]
        XCTAssertEqual(secondDessertIngredient.id, "2")
        XCTAssertEqual(secondDessertIngredient.title, "Apple Pie")
        XCTAssertEqual(secondDessertIngredient.strInstructions, "Instructions for Apple Pie")
        XCTAssertEqual(secondDessertIngredient.strIngredient1, "Ingredient A")
        XCTAssertEqual(secondDessertIngredient.strIngredient2, "Ingredient B")
        XCTAssertNil(secondDessertIngredient.strIngredient3)
        XCTAssertNil(secondDessertIngredient.strIngredient4)
        
    }
    
}

