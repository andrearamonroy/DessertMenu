//
//  DessertVM_Tests.swift
//  Fetch_Tests
//
//  Created by Andrea on 7/10/23.
//

import XCTest
import Combine
@testable import Fetch

final class DessertVM_Tests: XCTestCase {
    
    func testDessertViewModel() {
        //mock meal model
        let mockMealModel = MealModel(meals: [DessertModel(id: "1", title: "Chocolate Cake", image: "cake.jpg")])
        
        // instance of the mock data service
        let mockDataService = MockProductionDataService()
        mockDataService.mockMealModel = mockMealModel
        
        //instance of the view model using the mock data service
        let viewModel = DessertViewModel(dataService: mockDataService)
        
        // Test initial state
        XCTAssertEqual(viewModel.desserts.count, 1)
        XCTAssertEqual(viewModel.desserts.first?.id, "1")
        XCTAssertEqual(viewModel.desserts.first?.title, "Chocolate Cake")
        XCTAssertEqual(viewModel.desserts.first?.image, "cake.jpg")
    }
}

