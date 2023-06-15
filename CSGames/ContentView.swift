//
//  ContentView.swift
//  ColoredSquares
//
//  Created by Volker on 10.04.22.
//
//  Updated:
//    2022-04-25
//    2022-04-20 Classes for parameter, Navigationview color
//    2022-04-18 Debugging squares, improved ColorChooser with binding
//    2022-04-14 Project navigator, rename App, Color chooser
//    2022-04-13 EnvirionmentObject, ViewParameter, Refactoring
//    2022-04-12 Model, ObservableObject, own project
//    2022-04-11 Running app
//    2022-04-10 Creation
//
//  Remarks:
//    Designed for iPhone 12 mini
//
//  Literatur:
//    Code documentation:
//      https://mobikul.com/how-to-create-documentation-of-your-swift-code/
//
//  TODOs:
//    ColoredSquareModel
//    Problem: With lot of squares ... square hide box border, bottom square row become rectangles
//    Set simulator on iPhone 12 mini as default
//    Project navigator with folders (e.g. for ColoredSquaresApp)
//    Implement app choser in ContentView
//    Comments
//    Only one published property "modelUpdated"
//    GeometryReader for automatic adjustment of widget positions and gaps.
//    Include RGB Colors
//    Hover Squares, Buttons
//    Timeline (automatic update)
//    Animation for buttons, on hover, on tap, ...
//    Improve screen update after button activation
//    Rotate single squares on change
//    Randomly slightly tilted squares
//    Randomly slightly different square sizes
//    Rotate big square
//    Implement user instruction
//    Color range choser
//    Color gradient infuenced by neightbor squares
//    Save data in data base
//    Move squares
//    Growing and shirinking square
//    Fill big square with squares of different size, cover the background completly
//    Show model data
//    Gestures https://www.hackingwithswift.com/books/ios-swiftui/how-to-use-gestures-in-swiftui
//
//    Game: all squares in the same color
//    Game: Color memory
//    Game: Tetris
//    Game: Tennis
//    Game: Move squares
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
