//
//  DessertModel_Tests.swift
//  Fetch_Tests
//
//  Created by Andrea on 7/10/23.
//

import XCTest
@testable import Fetch


final class DessertModel_Tests: XCTestCase {
    
    var mockMealModel: MealModel?
    
    override func setUp() {
        super.setUp()
        
        // mock MealModel object for testing
        let dessertModel1 = DessertModel(id: "1", title: "Chocolate Cake", image: "chocolate_cake.jpg")
        let dessertModel2 = DessertModel(id: "2", title: "Strawberry Cheesecake", image: "strawberry_cheesecake.jpg")
        mockMealModel = MealModel(meals: [dessertModel1, dessertModel2])
    }
    
    override func tearDown() {
        mockMealModel = nil
        super.tearDown()
    }
    
    func testMealModel() {
        guard let mockMealModel = mockMealModel else {
            XCTFail("Mock MealModel is nil")
            return
        }
        
        XCTAssertEqual(mockMealModel.meals.count, 2)
        
        let dessertModel1 = DessertModel(id: "1", title: "Chocolate Cake", image: "chocolate_cake.jpg")
        let dessertModel2 = DessertModel(id: "2", title: "Strawberry Cheesecake", image: "strawberry_cheesecake.jpg")
        let expectedMealModel = MealModel(meals: [dessertModel1, dessertModel2])
        
        XCTAssertEqual(mockMealModel, expectedMealModel)
    }
}

