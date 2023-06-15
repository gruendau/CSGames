//
//  ColoredSquaresApp.swift
//  ColoredSquares
//
//  Created by Test on 12.04.22.
//

import SwiftUI


@main
struct ColoredSquaresApp: App {
    
    @StateObject var csm = ColoredSquaresModel()
    @StateObject var vp = ViewParameter()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(csm)
                .environmentObject(vp)
        }
    }
}
