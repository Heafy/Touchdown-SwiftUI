//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Jorge Martinez on 08/10/21.
//

import SwiftUI

struct BrandGridView: View {
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 0) {
            
            TitleView(title: "Brands")
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
                    ForEach(brands) {
                        brand in
                        BrandItemView(brand: brand)
                    } //: ForEach
                } //: LazyHGrid
                .frame(height: 200)
                .padding()
            } //: ScrollView
        } //: Vstack
    }
}

// MARK: - Preview
struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
