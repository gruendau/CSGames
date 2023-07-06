//
//  ContentView.swift
//  ColoredSquares
//
//  Created by Volker on 10.04.22.
//



// Model:
//   ColoredSquaresModel

// UI:
//   ContentView
//     MainView (with interface to model)
//       ScreenView
//         RoundedButton
//       ColoredSquaresView
//         ColoredSquareView
//


import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var csm: ColoredSquaresModel
    @EnvironmentObject var vp: ViewParameter
    
    var body: some View {
        
        ZStack {
            
            // 1. Layer
            // Background for screen
            Rectangle()
                .foregroundColor(.black)
            
            // 2. Layer
            // Initial content of screen
            VStack {
                
                // Title
                CSGamesTitle()
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
                CopyrightView()
                    .padding([.bottom], vp.copyright.paddingBottom)

            }
            
            // 3. Layer
            // Chosen content of screen
            MainView()
                .opacity(vp.isAcitive_ColoredSquares ? 1 : 0)
                
            
        }
        .edgesIgnoringSafeArea(.all)
        .padding([.bottom], -50)
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ColoredSquaresModel())
            .environmentObject(ViewParameter())
    }
}
