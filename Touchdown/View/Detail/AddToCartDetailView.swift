//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Jorge Martinez on 08/10/21.
//

import SwiftUI

struct AddToCartDetailView: View {

    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to cart")
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .textCase(.uppercase)
                .foregroundColor(.white)
            Spacer()
        }) //: Button
            .padding(15)
            .background(shop.selectedProduct?.colorComponent ??  sampleProduct.colorComponent)
            .clipShape(Capsule())
    }
}

// MARK: - Preview
struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Shop())
    }
}
