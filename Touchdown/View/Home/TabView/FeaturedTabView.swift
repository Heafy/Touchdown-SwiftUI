//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by indra on 05/10/21.
//

import SwiftUI

struct FeaturedTabView: View {
    
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(players) {
                player in
                FeaturedItemView(player: player)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 15)
            } //: ForEach
        } //: TabView
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

// MARK: - Preview
struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .background(Color.gray)
    }
}
