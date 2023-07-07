//
//  Settings.swift
//  CSGames
//
//  Created by volker on 07.07.23.
//

import SwiftUI

class Settings: ObservableObject {
    
    let colorBackground = Color.black
    
}


extension Color {
    static let colorBackground = Settings().colorBackground
}



