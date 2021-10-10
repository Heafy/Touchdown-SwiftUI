//
//  ContentView.swift
//  Touchdown
//
//  Created by Jorge Martinez on 04/10/21.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    
    // MARK: - Body
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    
                    ScrollView(.vertical) {
                        VStack(spacing: 0) {
                            
                            FeaturedTabView()
                                .frame(minHeight: 256)
                                .padding(.vertical, 20)
                            
                            CategoryGridView()
                            
                            ProductGridView()
                                .padding(15)
                                
                            
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                            
                        } //: VStack
                    } //: VStack
                    
                } //: VStack
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        } //: ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
