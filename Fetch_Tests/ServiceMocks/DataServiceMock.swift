//
//  DataServiceMock.swift
//  Fetch_Tests
//
//  Created by Andrea on 7/9/23.
//

import Foundation
import Combine
@testable import Fetch

class DataServiceMock: DataServiceProtocol {
    var mealModel: MealModel?
    var error: Error?
    
    func getData() -> AnyPublisher<MealModel, Error> {
        if let mealModel = mealModel {
            return Result.Publisher(mealModel)
                .eraseToAnyPublisher()
        } else if let error = error {
            return Fail(error: error)
                .eraseToAnyPublisher()
        } else {
            return Fail(error: NSError(domain: "com.example.error", code: 123, userInfo: nil))
                .eraseToAnyPublisher()
        }
    }
}
