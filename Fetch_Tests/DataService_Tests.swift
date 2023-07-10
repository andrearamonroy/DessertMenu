//
//  DataService_Tests.swift
//  Fetch_Tests
//
//  Created by Andrea on 7/10/23.
//

import XCTest
import Combine
@testable import Fetch

final class DataService_Tests: XCTestCase {
    
    func testGetData_Success() {
        // Given
        let expectedMealModel = MealModel(meals: [
            DessertModel(id: "1", title: "Chocolate Cake", image: "chocolate_cake.jpg"),
            DessertModel(id: "2", title: "Apple Pie", image: "apple_pie.jpg")
        ])
        
        let mockDataService = MockProductionDataService()
        mockDataService.mockMealModel = expectedMealModel
        
        // When
        let expectation = XCTestExpectation(description: "Get data")
        
        let cancellable = mockDataService.getData()
            .sink { completion in
              
            } receiveValue: { mealModel in
                // Then
                XCTAssertEqual(mealModel, expectedMealModel)
                expectation.fulfill()
            }
        
        wait(for: [expectation], timeout: 5.0)
        
        // Cleanup
        cancellable.cancel()
    }
    
    func testGetData_Error() {
        // Given
        let expectedError = NSError(domain: "com.example.error", code: 123, userInfo: nil)
        
        let mockDataService = MockProductionDataService()
        mockDataService.mockError = expectedError
        
        // When
        let expectation = XCTestExpectation(description: "Get data")
        
        let cancellable = mockDataService.getData()
            .sink { completion in
                // Then
                switch completion {
                case .failure(let error):
                    XCTAssertEqual(error.localizedDescription, expectedError.localizedDescription)
                    expectation.fulfill()
                default:
                    XCTFail("Expected failure completion")
                }
            } receiveValue: { _ in
               
            }
        
        wait(for: [expectation], timeout: 5.0)
        
        // Cleanup
        cancellable.cancel()
    }
    
}

