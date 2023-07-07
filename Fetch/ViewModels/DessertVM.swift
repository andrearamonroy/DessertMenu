//
//  DessertVM.swift
//  Fetch
//
//  Created by Andrea on 7/3/23.
//

import Foundation
import Combine
import UIKit

class DessertViewModel: ObservableObject {
    
    @Published var desserts: [DessertModel] = []
    private var cancellables = Set<AnyCancellable>()
    let dataService: ProductionDataService
    
    init(dataService: ProductionDataService){
        self.dataService = dataService
        loadDesserts()
    }
    
    private func loadDesserts(){
        dataService.getData()
            .sink(receiveCompletion: NetworkingManager.handleCompletition, receiveValue: { [weak self] returnedMeals in
                self?.desserts = returnedMeals.meals
            })
            .store(in: &cancellables)
    }
    
}



