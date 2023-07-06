//
//  ViewParameter.swift
//  ColoredSquares
//
//  Created by Test on 13.04.22.
//

import SwiftUI

struct Squarebox {
    var borderColor: Color
    var borderSize: CGFloat
    var borderIsBlured: Bool
    var borderBlurRadius: CGFloat
    var backgroundColor: Color
    
    init (borderColor: Color = .white,
          borderSize: CGFloat = 4,
          backgroundColor: Color = .black) {
        self.borderColor = borderColor
        self.borderSize = borderSize
        self.borderIsBlured = true
        self.borderBlurRadius = 0
        self.backgroundColor = backgroundColor
    }
}




class ViewParameter: ObservableObject {
    
    // Games
    @Published var isAcitive_ColoredSquares = false
    
    func activateGame (_ game: String) {
        if game == "Colored Squares" {
            deactivateAllGames()
            isAcitive_ColoredSquares = true
        }
        
        func deactivateAllGames () {
            isAcitive_ColoredSquares = false
        }
    }
    
    
    // Screen
    @Published var screenBackgroundColor: Color = .black
    
    // Title
    let titlePaddingTop: CGFloat = 90
    
    // Squarebox
    @Published var squarebox = Squarebox()
    
    //@Published var squareboxBorderColor: Color = .white
//    @Published var squareboxBackgroundColor: Color = .black
//    @Published var squareboxBorderSize: CGFloat = 4
    
    // Buttons
    
    
    // Copyright
    let copyrightPaddingBottom: CGFloat = 30


    
    
    

    
//    let copyrightText: String = "© 2022 by volker"
//    let copyrightFont: Font = .footnote
//    let copyrightColor: Color = .red
//    let copyrightOpacity: CGFloat = 0.8
//    let copyrightPaddingBottom: CGFloat = 30
    
    // AppInfo
    @Published var textColor: Color = .white

    @Published var showAppInfo = false
    

    
}
