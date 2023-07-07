//
//  Settings.swift
//  CSGames
//
//  Created by volker on 07.07.23.
//

import SwiftUI

class Settings: ObservableObject {
    
    // Colors
    let colorBackground = Color.black
    
    // Positions
    let paddingTitleTop: CGFloat = 90
    
}


extension Color {
    static let colorBackground = Settings().colorBackground
}



