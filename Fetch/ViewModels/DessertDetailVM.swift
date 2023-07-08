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
    
    func nonEmptyIngredients(detail: DessertIngredientModel) -> [String]? {
        let ingredients: [String] = [
            detail.strIngredient1,
            detail.strIngredient2,
            detail.strIngredient3,
            detail.strIngredient4,
            detail.strIngredient5,
            detail.strIngredient6,
            detail.strIngredient7,
            detail.strIngredient8,
            detail.strIngredient9,
            detail.strIngredient10,
            detail.strIngredient11,
            detail.strIngredient12,
            detail.strIngredient13,
            detail.strIngredient14,
            detail.strIngredient15,
            detail.strIngredient16,
            detail.strIngredient17,
            detail.strIngredient18,
            detail.strIngredient19,
            detail.strIngredient20
        ].compactMap { ingredient in
            return ingredient?.isEmpty == false ? ingredient : nil
        }
        return ingredients.isEmpty ? nil : ingredients
    }
    
    func nonEmptyMeasurements(detail: DessertIngredientModel) -> [String]? {
        let measurements: [String] = [
            detail.strMeasure1,
            detail.strMeasure2,
            detail.strMeasure3,
            detail.strMeasure4,
            detail.strMeasure5,
            detail.strMeasure6,
            detail.strMeasure7,
            detail.strMeasure8,
            detail.strMeasure9,
            detail.strMeasure10,
            detail.strMeasure11,
            detail.strMeasure12,
            detail.strMeasure13,
            detail.strMeasure14,
            detail.strMeasure15,
            detail.strMeasure16,
            detail.strMeasure17,
            detail.strMeasure18,
            detail.strMeasure19,
            detail.strMeasure20
        ].compactMap { measurement in
            return measurement?.isEmpty == false ? measurement : nil
        }
        return measurements.isEmpty ? nil : measurements
    }

}

