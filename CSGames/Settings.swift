//
//  Settings.swift
//  CSGames
//
//  Created by volker on 07.07.23.
//

import SwiftUI


class Settings: ObservableObject {
    
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
    
    // Games
    @Published var isAcitive_ColoredSquares = false
    
//    func activateGame (_ game: Games) {
//
//        // Deactivate
//        deactivateAllGames()
//
//        // Activate
//        switch game {
//        case .ColoredSquares: isAcitive_ColoredSquares = true
//        }
//
//        func deactivateAllGames () {
//            isAcitive_ColoredSquares = false
//        }
//    }
    
}


extension Color {
    static let colorBackground = Settings().colorBackground
}



