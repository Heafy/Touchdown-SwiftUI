//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Jorge Martinez on 04/10/21.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
