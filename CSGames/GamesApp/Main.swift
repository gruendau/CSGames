//
//  Main.swift
//  CSGames
//
//  Created by volker on 07.07.23.
//

import SwiftUI


/// Main view for CSGames.
///
/// This view starts the CSGames program.
struct Main: View {
    @EnvironmentObject var set: Settings
    var body: some View {
        _Main(content: Content(), links: Links())
    }
}


private struct Content: View {
    @EnvironmentObject var set: Settings
    var body: some View {
        Group {
            
            // Example:
            // Colored Squares
            // GameSelector(name: "Colored Squares",
            //              show: $set.showColoredSquares)
            
            // CONTENT START ---------------------
            
            ZStack {
                // 1.Layer
                // Game selector
                VStack {
                    
                    // Colored Squares
                    GameSelector(name: "Colored Squares",
                                 show: $set.showColoredSquares)
                    
                    // ...
                    
                    Spacer()
                }
                .padding(.top, set.paddingContentTop)

                // 2.Layer
                // Info
                Info()
                    .opacity(set.showAppInfo ? 1 : 0)
                    
            }
    
            // CONTENT END -----------------------
            
        }
    }
}

private struct Links: View {
    @EnvironmentObject var set: Settings
    var body: some View {
        Group {
            
            // Example:
            // Colored Squares
            // if set.showColoredSquares {
            //     CSMain(showApp: $set.showColoredSquares)
            // }
            
            // CONTENT START ---------------------
            
            // Colored Squares
            if set.showColoredSquares {
                CSMain(showApp: $set.showColoredSquares)
            }
            
            // ...
            
            // CONTENT END -----------------------
            
        }
    }
}


struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
            .environmentObject(Settings())
    }
}


