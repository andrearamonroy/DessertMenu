//
//  DessertVM.swift
//  Fetch
//
//  Created by Andrea on 7/3/23.
//

import Foundation
import Combine

class DessertViewModel: ObservableObject {
    
    @Published var desserts: [DessertModel] = []
    var cancellables = Set<AnyCancellable>()
    let dataService: ProductionDataService
    
    init(dataService: ProductionDataService){
        self.dataService = dataService
        loadDesserts()
    }
    
    private func loadDesserts(){
        dataService.getData()
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    print("Error: \(error)")
                }
            }, receiveValue: { [weak self] returnedMeals in
                self?.desserts = returnedMeals.meals
            })
            .store(in: &cancellables)
    }
}




