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
    var body: some View {
        Main()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
