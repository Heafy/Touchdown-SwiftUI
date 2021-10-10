//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Jorge Martinez on 08/10/21.
//

import SwiftUI

struct HeaderDetailView: View {
    
    // MARK: - Propierties
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        } //: VStack
        .foregroundColor(.white)
    }
}

// MARK: - Preview
struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
            .environmentObject(Shop())
    }
}
