//
//  DessertDetailView.swift
//  Fetch
//
//  Created by Andrea on 7/5/23.
//
import SwiftUI

struct DessertDetailView: View {
    @ObservedObject var dessertDetailVM: DessertDetailVM
    let dessertTitle: String
    
    init(dessert: DessertModel) {
        self.dessertDetailVM = DessertDetailVM(dessert: dessert)
        self.dessertTitle = dessert.title
    }
    
    var body: some View {
        VStack {
            DessertHeaderView(title: dessertTitle)
            
            if !dessertDetailVM.dessertDetails.isEmpty {
                ScrollView {
                    ForEach(dessertDetailVM.dessertDetails) { detail in
                        VStack(alignment: .leading, spacing: 16) {
                           
                            if let ingredients = dessertDetailVM.nonEmptyIngredients(detail: detail),
                               let measurements = dessertDetailVM.nonEmptyMeasurements(detail: detail) {
                                let ingredientMeasurementPairs = Array(zip(measurements, ingredients))
                                
                                DessertSectionTextView(sectionTitle: "Ingredients")
                                    ForEach(ingredientMeasurementPairs, id: \.0) { pair in
                                        Text("\(pair.0): \(pair.1)")
                                    }
                                
                            }
                            
                            DessertSectionTextView(sectionTitle: "Instructions")
                            
                            Text(detail.strInstructions)
                                .foregroundColor(.primary)
                        }
                        .padding()
                        .background(Color.white)
                        .cornerRadius(8)
                        .shadow(radius: 4)
                        .padding(.horizontal)
                    }
                }
            } else {
                Text("No dessert details available.")
                    .foregroundColor(.secondary)
            }
        }
        
        .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.blue]), startPoint: .top, endPoint: .bottom))
        .edgesIgnoringSafeArea(.all)
    }
}



struct DessertDetailView_Previews: PreviewProvider {
    
    static let testData = DessertModel(id: "52768", title: "Apple Pie", image: "1")
    
    static var previews: some View {
        DessertDetailView(dessert: testData)
    }
}


