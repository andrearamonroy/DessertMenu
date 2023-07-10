//
//  DessertSectionTextView.swift
//  Fetch
//
//  Created by Andrea on 7/10/23.
//

import SwiftUI

struct DessertSectionTextView: View {
    var sectionTitle : String
    
    var body: some View {
        
        Text(sectionTitle)
            .font(.headline)
            .padding(.vertical, 16)
            .frame(maxWidth: .infinity)
            .foregroundColor(.white)
            .background(Color.cyan)
            .cornerRadius(8)
    }
}

struct DessertSectionTextView_Previews: PreviewProvider {
    static var previews: some View {
        DessertSectionTextView(sectionTitle: "Section Title")
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
