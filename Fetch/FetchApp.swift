//
//  FetchApp.swift
//  Fetch
//
//  Created by Andrea on 7/3/23.
//

import SwiftUI

@main
struct FetchApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                if let url = URL(string: "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert") {
                    ContentView(dataService: ProductionDataService(url: url))
                } else {
                    Text("Invalid URL")
                }
            }
        }
    }
}
