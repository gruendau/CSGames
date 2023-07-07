//
//  CSGamesApp.swift
//  CSGames
//
//  Created by Test on 12.04.22.
//

import SwiftUI


@main
struct CSGamesApp: App {
    
    @StateObject var csm = CSModel()
    @StateObject var vp = CSSettings()
    @StateObject var s = Settings()
    
    var body: some Scene {
        WindowGroup {
            Main()
                .environmentObject(csm)
                .environmentObject(vp)
                .environmentObject(s)
        }
    }
}
