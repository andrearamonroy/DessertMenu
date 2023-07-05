//
//  ContentView.swift
//  Fetch
//
//  Created by Andrea on 7/3/23.
//

import SwiftUI


struct ContentView: View {
    @StateObject private var vm: DessertViewModel
    
    init(dataService: ProductionDataService){
        _vm = StateObject(wrappedValue: DessertViewModel(dataService: dataService))
    }
    
    var body: some View {
        ScrollView {
            ForEach(vm.desserts) { dessert in
                VStack {
                   DessertImageView(dessert: dessert)
                    .frame(width: 100, height: 100)
                    .padding()
                    Text(dessert.title)
                    Text(dessert.id)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(dataService: ProductionDataService(url: URL(string: "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert")!))
    }
}


