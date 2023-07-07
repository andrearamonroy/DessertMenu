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
        VStack {
            Text("Dessert Menu")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
                .foregroundColor(.white)

                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .padding(.top, UIApplication.shared.connectedScenes
                                        .compactMap { $0 as? UIWindowScene }
                                        .first?.windows.first?.safeAreaInsets.top)
            ScrollView {
                ForEach(vm.desserts ) { dessert in
                    NavigationLink(
                        destination: DessertDetailView(dessert: dessert),
                        label: {
                            HStack {
                                DessertImageView(dessert: dessert)
                                    .frame(width: 100, height: 100)
                                    .cornerRadius(8)
                                    .shadow(radius: 4)
                                
                                Text(dessert.title)
                                Text(dessert.id)
                                    .font(.headline)
                                
                                Spacer()
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(8)
                            .shadow(radius: 4)
                        }
                    )
                    .buttonStyle(PlainButtonStyle())
                    .padding(.horizontal)
                }
            }
        }
        .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.blue]), startPoint: .top, endPoint: .bottom))
        .edgesIgnoringSafeArea(.all)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(dataService: ProductionDataService(url: URL(string: "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert")!))
    }
}


