//
//  Settings.swift
//  CSGames
//
//  Created by volker on 07.07.23.
//

import SwiftUI


class Settings: ObservableObject {
    
    // MARK: Main
    // Texts
    let textTitle = "CSGames"
    let textCopyright = "© 2022 by volker"
    
    // Colors
    let colorBackground = Color.black
    let colorForeground = Color.white
    
    // Positions
    let paddingTitleTop = CGFloat(90)
    let paddingContentTop = CGFloat(30)
    let paddingCopyrightBottom = CGFloat(18)
    

    // MARK: Games
    // Games
    @Published var showColoredSquares = false
    
    
    // MARK: Info
    // Info
    let paddingInfoLeading = CGFloat(30)
    let paddingInfoTop = CGFloat(25)
    let paddingInfoHorizontal = CGFloat(20)
    
    // AppInfo
    @Published var showAppInfo = false
    
    @Published var showUserInstructions = false
    @Published var showData = false
    @Published var showStatistics = false
    @Published var showCustomization = false
    @Published var showAbout = false
    
}


extension Color {
    static let colorBackground = Settings().colorBackground
}



