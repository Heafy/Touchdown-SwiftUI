//
//  Shop.swift
//  Touchdown
//
//  Created by Jorge Martinez on 08/10/21.
//

import Foundation

class Shop: ObservableObject {
    
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
