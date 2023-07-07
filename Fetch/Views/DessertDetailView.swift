//
//  DessertDetailView.swift
//  Fetch
//
//  Created by Andrea on 7/5/23.
//
import SwiftUI

struct DessertDetailView: View {
    @ObservedObject var dessertDetailVM: DessertDetailVM
    
    init(dessert: DessertModel) {
        self.dessertDetailVM = DessertDetailVM(dessert: dessert)
    }
    
    var body: some View {
        VStack {
            Text("Dessert Details")
                .font(.title)
                .padding()
                .foregroundColor(.primary)
                .background(Color.yellow)
                .cornerRadius(8)
                .padding(.bottom, 16)
            
            if !dessertDetailVM.dessertDetails.isEmpty {
                List(dessertDetailVM.dessertDetails) { detail in
                    VStack(alignment: .leading, spacing: 16) {
                        Text(detail.title)
                            .font(.title2)
                            .bold()
                            .foregroundColor(.primary)
                        
                        Text("Instructions")
                            .font(.headline)
                        
                        Text(detail.strInstructions)
                            .padding(.horizontal)
                        
                        if let ingredients = nonEmptyIngredients(detail: detail) {
                            Section(header: Text("Ingredients").font(.headline)) {
                                ForEach(ingredients, id: \.self) { ingredient in
                                    Text(ingredient)
                                }
                            }
                        }
                        
                        if let measurements = nonEmptyMeasurements(detail: detail) {
                            Section(header: Text("Measurements").font(.headline)) {
                                ForEach(measurements, id: \.self) { measurement in
                                    Text(measurement)
                                }
                            }
                        }
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
    
    private func nonEmptyIngredients(detail: DessertIngredientModel) -> [String]? {
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
    
    private func nonEmptyMeasurements(detail: DessertIngredientModel) -> [String]? {
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


struct DessertDetailView_Previews: PreviewProvider {
    
    static let testData = DessertModel(id: "52768", title: "1", image: "1")
    
    static var previews: some View {
        DessertDetailView(dessert: testData)
    }
}
