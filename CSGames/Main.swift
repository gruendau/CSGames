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
        
        ZStack {
            
            // 1. Layer
            // Background for screen
            Color.colorBackground
            
            // 2. Layer
            // Initial content of screen
            VStack {
                
                // Title
                Title()
                    .padding(.top, set.paddingTitleTop)
                
                // Table of content
                VStack {
                    // Colored Squares
                    GameSelector(name: "Colored Squares",
                                 isActive: $set.isAcitive_ColoredSquares)

                    // Next Game ...
                    
                }
                .foregroundColor(set.colorForeground)
                .padding(.top, set.paddingContentTop)
                
                Spacer()
            
                // Copyright
                Copyright()
                    .padding(.bottom, set.paddingCopyrightBottom)

            }
            
            // 3. Layer
            // Chosen content of screen
            if set.isAcitive_ColoredSquares {
                CSMain(isAppActive: $set.isAcitive_ColoredSquares)
            }
                
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}


struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
            .environmentObject(Settings())
    }
}
