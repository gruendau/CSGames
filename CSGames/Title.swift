//
//  CSGamesTitle.swift
//  CSGames
//
//  Created by Test on 14.04.22.
//

import SwiftUI

/// Title for CSGames.
///
/// Title with foreground gradient color that changes when title is tapped.
struct Title: View {
    
    @EnvironmentObject var s: Settings
    
    @State var recolorize = true
    
    var body: some View {
        
        let title = Text(s.textTitle).bold().font(.largeTitle)
        
        Button(action: {
            recolorize.toggle()
        }, label: {
            if recolorize {
                title.foregroundGradient1()
            } else {
                title.foregroundGradient1()
            }
        })

    }
}


struct CSGamesTitle_Previews: PreviewProvider {
    static var previews: some View {
        Title()
            .environmentObject(Settings())
    }
}
