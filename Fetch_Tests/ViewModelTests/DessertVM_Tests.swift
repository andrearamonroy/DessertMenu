//
//  DessertVM_Tests.swift
//  Fetch_Tests
//
//  Created by Andrea on 7/8/23.
//

import XCTest
import Combine
@testable import Fetch


final class DessertVM_Tests: XCTestCase {
    
    var viewModel: DessertViewModel?
    var mockDataService: DataServiceMock?
    var cancellables: Set<AnyCancellable>!
    
    override func setUp() {
        super.setUp()
        mockDataService = DataServiceMock()
        if let mockDataService = mockDataService {
            viewModel = DessertViewModel(dataService: mockDataService)
        } else {
            // Handles the case when mockDataService is nil
            XCTFail("Failed to create mockDataService.")
        }
        cancellables = Set<AnyCancellable>()
    }
    
    
    override func tearDown() {
        cancellables = nil
        viewModel = nil
        mockDataService = nil
        super.tearDown()      
    }
    
    func testLoadDesserts_Successful() {
        // Given
        let mockMealModel = MealModel(meals: [DessertModel(id: "1", title: "apple pie", image: "mock image")])
        mockDataService?.mealModel = mockMealModel
        
        // When
        viewModel?.loadDesserts()
        
        // Then
        XCTAssertEqual(viewModel?.desserts.count, 1)
        XCTAssertEqual(viewModel?.desserts.first?.title, "apple pie")
    }
    
    func testLoadDesserts_Failure() {
        // Given
        let mockError = NSError(domain: "com.example.error", code: 123, userInfo: nil)
        mockDataService?.error = mockError
        
        // When
        viewModel?.loadDesserts()
        
        // Then
        XCTAssertTrue(viewModel?.desserts.isEmpty ?? false)
    }
    
}
