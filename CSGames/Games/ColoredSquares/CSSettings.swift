//
//  CSSettings.swift
//  ColoredSquares
//
//  Created by Test on 13.04.22.
//

import SwiftUI


class CSSettings: ObservableObject {
    
    // Texts
    let textTitle = "Colored Squares"
    let textCopyright = "© 2022 by volker"

    // Colors
    @Published var colorBackground = Color.black
    @Published var colorForeground = Color.white
    
    // Position
    let paddingTitleTop = CGFloat(90)

    // Copyright
    let paddingCopyrightBottom = CGFloat(18)

    // AppInfo
    @Published var showAppInfo = false
    
    @Published var showUserInstructions = false
    @Published var showData = false
    @Published var showStatistics = false
    @Published var showCustomization = false
    @Published var showAbout = false

    // Squarebox
    @Published var squarebox = Squarebox()
    
    struct Squarebox {
        var borderColor = Color.white
        var borderSize = CGFloat(4)
        var borderIsBlured = true
        var borderBlurRadius = CGFloat(0)
        var backgroundColor = Color.black
    }

}
