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
            
            // Background for screen
            Rectangle()
                .foregroundColor(.black)
            
            // Initial content of screen
            VStack {
                
                CSGamesTitle()
                    .padding([.top], vp.titlePaddingTop)
                
                //Spacer()
                
                ZStack {
                    Text("Colored Squares")
                        .foregroundGradient1()
                        .onTapGesture {
                            vp.activateGame("Colored Squares")
                    }
                    
                }
                .font(.title2)
                .foregroundColor(vp.textColor)
                .padding([.top], 30)
                
                Spacer()
            
                CopyrightView()
                    .padding([.bottom], vp.copyright.paddingBottom)

            }
             // Choosen conten of screen
            MainView()
                //.edgesIgnoringSafeArea(.all)
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
