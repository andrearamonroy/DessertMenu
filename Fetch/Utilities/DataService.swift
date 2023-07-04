//
//  DataService.swift
//  Fetch
//
//  Created by Andrea on 7/3/23.
//

import Foundation
import Combine

protocol DataServiceProtocol {
    func getData() -> AnyPublisher <MealModel, Error>
}

class ProductionDataService: DataServiceProtocol {
    
    let url: URL
    //= URL(string: "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert")!
    
    init(url: URL){
        self.url = url
    }
    
    func getData() -> AnyPublisher <MealModel, Error> {
        URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: MealModel.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
//class MockDataService: DataServiceProtocol {
//    let mealModel: MealModel
//
//    init() {
//        mealModel = MealModel(meals: [])
//        assignMockData()
//    }
//    
//    func assignMockData() {
//        let dessert1 = DessertModel(id: "1", title: "Chocolate Cake", image: "chocolate_cake.jpg")
//        let dessert2 = DessertModel(id: "2", title: "Strawberry Cheesecake", image: "strawberry_cheesecake.jpg")
//        mealModel.meals = [dessert1, dessert2]
//    }
//
//    func getData() -> AnyPublisher<MealModel, Error> {
//        return Just(mealModel)
//            .setFailureType(to: Error.self)
//            .eraseToAnyPublisher()
//    }
//}



