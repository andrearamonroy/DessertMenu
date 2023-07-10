//
//  DessertHeaderView.swift
//  Fetch
//
//  Created by Andrea on 7/7/23.
//

import SwiftUI

struct DessertHeaderView: View {
    
    let title: String
    
    var body: some View {
        Text(title)
            .font(.title)
            .fontWeight(.bold)
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .background(Color.cyan)
            .padding(.top, UIApplication.shared.connectedScenes
                .compactMap { $0 as? UIWindowScene }
                .first?.windows.first?.safeAreaInsets.top)
    }
    
}

struct DessertHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        DessertHeaderView(title: "Dessert Title")
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
