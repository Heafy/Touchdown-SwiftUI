//
//  ProductModel.swift
//  Touchdown
//
//  Created by Jorge Martinez on 08/10/21.
//

import SwiftUI

struct Product: Codable, Identifiable {
    
    var id: Int
    var name: String
    var image: String
    var price: Int
    var description: String
    var color: [Double]
    var colorComponent: Color {
        Color(red: color[0], green: color[1], blue: color[2])
    }
    
    var formattedPrice: String {
        "$\(price)"
    }
    
}
