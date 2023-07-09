//
//  DataService.swift
//  Fetch
//
//  Created by Andrea on 7/3/23.
//

import Foundation
import Combine


class ProductionDataService: DataServiceProtocol {
    
    let url: URL
    //= URL(string: "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert")!
    
    init(url: URL){
        self.url = url
    }
    
    func getData() -> AnyPublisher <MealModel, Error> {
       NetworkingManager.download(url: url)
            .decode(type: MealModel.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}



