//
//  DessertImageView.swift
//  Fetch
//
//  Created by Andrea on 7/5/23.
//
import Foundation
import SwiftUI

struct DessertImageView: View {
    
    @StateObject var vm: DessertImageViewModel
    
    init(dessert: DessertModel){
        _vm = StateObject(wrappedValue: DessertImageViewModel(dessert: dessert))
    }
    
    var body: some View {
        ZStack {
            if let image = vm.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            } else if vm.isLoading {
                ProgressView()
            } else {
                Image(systemName: "questionmark")
                    .foregroundColor(Color.gray)
            }
        }
    }
}

struct DessertImageView_Previews: PreviewProvider {

    static let dessertTest = DessertModel(id: "1", title: "Chocolate Cake", image: "https://www.themealdb.com/images/media/meals/adxcbq1619787919.jpg")

    static var previews: some View {
        DessertImageView(dessert: dessertTest )
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
