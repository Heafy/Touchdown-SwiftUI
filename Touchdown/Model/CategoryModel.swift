//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Jorge Martinez on 06/10/21.
//

import Foundation

struct Category: Codable, Identifiable {
    
    var id: Int
    var name: String
    var image: String
}
