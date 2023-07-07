//
//  CSSettings.swift
//  ColoredSquares
//
//  Created by Test on 13.04.22.
//

import SwiftUI


class CSSettings: ObservableObject {

    // Colors
    @Published var colorBackground = Color.black
    @Published var colorForeground = Color.white
    
    // Position
    let paddingTitleTop = CGFloat(90)

    // Copyright
    let paddingCopyrightBottom = CGFloat(30)

    // AppInfo
    @Published var showAppInfo = false
    
    // Squarebox
    @Published var squarebox = Squarebox()
    
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
    
}
