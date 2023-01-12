//
//  ebadaApp.swift
//  ebada
//
//  Created by Reema Alsheddi on 11/01/2023.
//

import SwiftUI

@main
struct ebadaApp: App {
    init() {
                UserDefaults.standard.set(["ar"], forKey: "AppleLanguages")
            }
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
                .environment(\.locale, Locale(identifier: "ar"))
                .environment(\.layoutDirection, .rightToLeft)
        }
    }
}
