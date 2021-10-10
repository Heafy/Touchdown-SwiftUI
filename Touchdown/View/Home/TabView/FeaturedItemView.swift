//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by indra on 05/10/21.
//

import SwiftUI

struct FeaturedItemView: View {
    
    // MARK: - Properties
    var player: Player
    
    // MARK: - Body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

// MARK: - Preview
struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
