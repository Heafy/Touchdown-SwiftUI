//
//  LogoView.swift
//  Touchdown
//
//  Created by Jorge Martinez on 04/10/21.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack {
            Text("Touch")
                .font(.title3)
                .fontWeight(.black)
                .textCase(.uppercase)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
            
            Text("Down")
                .font(.title3)
                .fontWeight(.black)
                .textCase(.uppercase)
        } //: HStack
        .foregroundColor(.black)
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
