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
            ContentView(dataService: ProductionDataService())
        }
    }
}
