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
    
    @EnvironmentObject var csm: ColoredSquaresModel
    @EnvironmentObject var vp: CSSettings
    
    var body: some View {
        
        ZStack {
            
            // 1. Layer
            // Background for screen
            Color.black
            
            // 2. Layer
            // Initial content of screen
            VStack {
                
                // Title
                Title()
                    .padding([.top], vp.titlePaddingTop)
                
                // Table of content
                ZStack {
                    // Colored Squares
                    Text("Colored Squares")
                        .foregroundGradient1()
                        .onTapGesture {
                            vp.activateGame("Colored Squares")
                    }
                    
                    // Next ...
                    
                }
                .font(.title2)
                .foregroundColor(vp.textColor)
                .padding([.top], 30)
                
                Spacer()
            
                // Copyright
                Copyright()
                    .padding([.bottom], vp.copyrightPaddingBottom)

            }
            
            // 3. Layer
            // Chosen content of screen
            CSMain()
                .opacity(vp.isAcitive_ColoredSquares ? 1 : 0)
                
            
        }
        .edgesIgnoringSafeArea(.all)
        .padding([.bottom], -50)
        
    }
}


struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
            .environmentObject(ColoredSquaresModel())
            .environmentObject(CSSettings())
    }
}
