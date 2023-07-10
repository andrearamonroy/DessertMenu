//
//  DataServiceMock.swift
//  Fetch
//
//  Created by Andrea on 7/10/23.
//

import Foundation
import Combine

class MockProductionDataService: DataServiceProtocol {
    var mockMealModel: MealModel?
    var mockError: Error?

    func getData() -> AnyPublisher<MealModel, Error> {
        if let mealModel = mockMealModel {
            return Result.Publisher(mealModel)
                .eraseToAnyPublisher()
        } else if let error = mockError {
            return Fail(error: error)
                .eraseToAnyPublisher()
        } else {
            // Return a default error for testing purposes
            return Fail(error: NSError(domain: "com.example.error", code: 123, userInfo: nil))
                .eraseToAnyPublisher()
        }
    }
}
