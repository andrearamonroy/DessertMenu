//
//  DessertImageService.swift
//  Fetch
//
//  Created by Andrea on 7/5/23.
//

import Foundation
import SwiftUI
import Combine

class DessertImageService: ObservableObject {
    
    @Published var image: UIImage? = nil
    
    private let dessert: DessertModel
    private var cancellables =  Set<AnyCancellable>()
    
    init(dessert: DessertModel){
        self.dessert = dessert
        getImage()
    }
    
    private func getImage(){
        guard let url = URL(string: dessert.image) else {return}
        
        NetworkingManager.download(url: url)
            .tryMap { (data) -> UIImage? in
                return UIImage(data: data)
            }
            .sink(receiveCompletion: NetworkingManager.handleCompletition) { [weak self] (returnedImage) in
                self?.image = returnedImage
            }
            .store(in: &cancellables)
    }
}
