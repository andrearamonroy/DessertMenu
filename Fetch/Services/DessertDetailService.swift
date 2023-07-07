//
//  DessertDetailService.swift
//  Fetch
//
//  Created by Andrea on 7/5/23.
//

import Foundation
import Combine

class DetailDataService: ObservableObject {
    @Published var dessertDetails: [DessertIngredientModel] = []
    private let dessert: DessertModel
    private var cancellables = Set<AnyCancellable>()
    
    init(dessert: DessertModel) {
        self.dessert = dessert
        getData()
    }
    
    func getData() {
        guard let url = URL(string: "https://themealdb.com/api/json/v1/1/lookup.php?i=\(dessert.id)") else { return }

        NetworkingManager.download(url: url)
            .decode(type: DessertDetailModel.self, decoder: JSONDecoder())
            .map { $0.meals }
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: {completion in
                switch completion {
                case .finished:
                    // Handle completion if needed
                    break
                case .failure(let error):
                    // Handle error
                    print("Error: \(error)")
                }
            }, receiveValue: { [weak self] meals in
                if !meals.isEmpty {
                    self?.dessertDetails = meals
                }
            })
            .store(in: &cancellables)
    }

}



