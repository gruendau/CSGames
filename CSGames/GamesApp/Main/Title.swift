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
    
    @EnvironmentObject var set: Settings
    
    @State var recolorize = true
    
    var body: some View {
        
        let title = Text(set.textTitle).font(.largeTitle).bold()
        
        Button(action: {
            recolorize.toggle()
        }, label: {
            if recolorize {
                title.randomTricolorForeground()
            } else {
                title.randomTricolorForeground()
            }
        })
        .padding(.top, set.paddingTitleTop)

    }
}


struct CSGamesTitle_Previews: PreviewProvider {
    static var previews: some View {
        Title()
            .environmentObject(Settings())
    }
}
