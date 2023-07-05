//
//  DessertImageVM.swift
//  Fetch
//
//  Created by Andrea on 7/5/23.
//

import Foundation
import SwiftUI
import Combine


class DessertImageViewModel: ObservableObject {
    
    @Published var image: UIImage? = nil
    @Published var isLoading: Bool = false
    
    private let dessert: DessertModel
    private let dataService: DessertImageService
    private var cancellables =  Set<AnyCancellable>()
    
    init(dessert: DessertModel){
        self.dessert = dessert
        self.dataService = DessertImageService(dessert: dessert)
        self.getImage()
        self.isLoading = true
    }
    
    private func getImage(){
        dataService.$image
            .sink { [weak self] (_) in
                self?.isLoading = false
            } receiveValue: { [weak self] (returnedImage) in
                self?.image = returnedImage
            }
            .store(in: &cancellables)
    }
}
