//
//  ProductGridView.swift
//  Touchdown
//
//  Created by Jorge Martinez on 08/10/21.
//

import SwiftUI

struct ProductGridView: View {
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 0) {
            TitleView(title: "Helmets")
            
            LazyVGrid(columns: gridLayout, spacing: 15) {
                
                ForEach(products) {
                    product in
                    ProductItemView(product: product)
                        .onTapGesture {
                            feedback.impactOccurred()
                            withAnimation(.easeOut) {
                                shop.selectedProduct = product
                                shop.showingProduct = true
                            }
                        }
                } //: Loop
            } //: LazyVGrid
        } //: VStack
    }
}

// MARK: - Preview
struct ProductGridView_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
