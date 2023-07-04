//
//  DataService.swift
//  Fetch
//
//  Created by Andrea on 7/3/23.
//

import Foundation
import Combine


class ProductionDataService {
    
    let url: URL = URL(string: "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert")!
    
    func getData() -> AnyPublisher <MealModel, Error> {
        URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: MealModel.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
