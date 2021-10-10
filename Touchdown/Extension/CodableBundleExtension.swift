//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Jorge Martinez on 05/10/21.
//

import Foundation

extension Bundle {
    
    func decode<T>(_ file: String) -> T where T: Codable {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        
        guard let decodedData = try? JSONDecoder().decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        return decodedData
    }
    
}
