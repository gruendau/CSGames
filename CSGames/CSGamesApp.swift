//
//  CSGamesApp.swift
//  CSGames
//
//  Created by Test on 12.04.22.
//

import SwiftUI


@main
struct CSGamesApp: App {
    
    @StateObject var csm = ColoredSquaresModel()
    @StateObject var vp = ViewParameter()
    
    var body: some Scene {
        WindowGroup {
            Main()
                .environmentObject(csm)
                .environmentObject(vp)
        }
    }
}
