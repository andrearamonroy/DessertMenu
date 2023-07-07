//
//  DessertDetailVM.swift
//  Fetch
//
//  Created by Andrea on 7/5/23.
//

import Foundation
import Combine

class DessertDetailVM: ObservableObject {
    @Published var dessertDetails: [DessertIngredientModel] = []
    
    private let dessert: DessertModel
    private let dataService: DetailDataService
    private var cancellables = Set<AnyCancellable>()
    
    init(dessert: DessertModel) {
        self.dessert = dessert
        self.dataService = DetailDataService(dessert: dessert)
        self.loadDetails()
    }
    
    private func loadDetails() {
        dataService.$dessertDetails
            .sink { [weak self] meals in
                self?.dessertDetails = meals
            }
            .store(in: &cancellables)
    }
}

