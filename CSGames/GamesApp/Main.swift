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
            // Background
            Background()
                
            // 2. Layer
            // Content (title, content, copyright)
            VStack {
                
                // Title
                Title()
                
                // Content
                VStack {
                    // Colored Squares
                    GameSelector(name: "Colored Squares",
                                 show: $set.showColoredSquares)

                    // Next Game ...
                    
                }
                .foregroundColor(set.colorForeground)
                .padding(.top, set.paddingContentTop)
                
                Spacer()
            
                // Copyright
                Copyright()

            }
            
            // 3. Layer
            // Chosen game
            // Colored Squares
            if set.showColoredSquares {
                CSMain(showApp: $set.showColoredSquares)
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
