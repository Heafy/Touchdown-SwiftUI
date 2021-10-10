//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Jorge Martinez on 06/10/21.
//

import SwiftUI

struct CategoryItemView: View {
    
    // MARK: - Properties
    var category: Category
    
    // MARK: - Body
    var body: some View {
        
        Button(action: {}, label: {
            HStack(spacing: 6) {
                
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                
                Text(category.name)
                    .fontWeight(.light)
                    .textCase(.uppercase)
                
                Spacer()
            } //: HStack
            .foregroundColor(.gray)
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
        }) //: Button
    }
}

// MARK: - Preview
struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
