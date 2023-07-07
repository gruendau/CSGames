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
    
    @EnvironmentObject var csm: CSModel
    @EnvironmentObject var vp: CSSettings
    @EnvironmentObject var s: Settings
    
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
                    .padding(.top, s.paddingTitleTop)
                
                // Table of content
                VStack {
                    // Colored Squares
                    Text("Colored Squares")
                        .foregroundGradient1()
                        .onTapGesture {
                            vp.activateGame("Colored Squares")
                    }
                    
                    
                    // Next ...
//                    Text("Hallo")
//                        .foregroundGradient1()
//                    Text("Hallo")
//                        .foregroundGradient1()
//                    Text("Hallo")
//                        .foregroundGradient1()
                    
                }
                .font(.title2)
                .foregroundColor(vp.textColor)
                //.foregroundGradient1()
                .padding(.top, 30)
                
                Spacer()
            
                // Copyright
                Copyright()
                    .padding(.bottom, s.paddingCopyrightBottom)

            }
            
            // 3. Layer
            // Chosen content of screen
            CSMain()
                .opacity(vp.isAcitive_ColoredSquares ? 1 : 0)
                
            
        }
        .edgesIgnoringSafeArea(.all)
        .padding(.bottom, -50)
        
    }
}


struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
            .environmentObject(CSModel())
            .environmentObject(CSSettings())
            .environmentObject(Settings())
    }
}
