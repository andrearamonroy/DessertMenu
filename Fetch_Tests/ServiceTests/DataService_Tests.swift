//
//  DataService_Tests.swift
//  Fetch_Tests
//
//  Created by Andrea on 7/9/23.
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
        
        let dataServiceMock = DataServiceMock()
        dataServiceMock.mealModel = expectedMealModel
        
        // When
        var receivedMealModel: MealModel?
        var receivedError: Error?
        
        let expectation = XCTestExpectation(description: "Get Data")
        let cancellable = dataServiceMock.getData()
            .sink { completion in
                switch completion {
                case .failure(let error):
                    receivedError = error
                case .finished:
                    break
                }
                expectation.fulfill()
            } receiveValue: { mealModel in
                receivedMealModel = mealModel
            }
        
        wait(for: [expectation], timeout: 1.0)
        cancellable.cancel()
        
        // Then
        XCTAssertNotNil(receivedMealModel)
        XCTAssertNil(receivedError)
        XCTAssertEqual(receivedMealModel, expectedMealModel)
    }
    
    func testGetData_Error() {
        // Given
        let expectedError = NSError(domain: "com.example.error", code: 123, userInfo: nil)
        
        let dataServiceMock = DataServiceMock()
        dataServiceMock.error = expectedError
        
        // When
        var receivedMealModel: MealModel?
        var receivedError: Error?
        
        let expectation = XCTestExpectation(description: "Get Data")
        let cancellable = dataServiceMock.getData()
            .sink { completion in
                switch completion {
                case .failure(let error):
                    receivedError = error
                case .finished:
                    break
                }
                expectation.fulfill()
            } receiveValue: { mealModel in
                receivedMealModel = mealModel
            }
        
        wait(for: [expectation], timeout: 1.0)
        cancellable.cancel()
        
        // Then
        XCTAssertNil(receivedMealModel)
        XCTAssertNotNil(receivedError)
        XCTAssertEqual(receivedError?.localizedDescription, expectedError.localizedDescription)
    }
    
    
}

