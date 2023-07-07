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
    
    @State var refreshTitle = 1
    
    var body: some View {
        
        HStack {
            Button(action: {
                refreshTitle += 1
            }, label: {
                Text("CSGames")
                    .bold()
                    .font(.largeTitle)
                    .foregroundGradient1()
            })
            
            Text("\(refreshTitle)").hidden()
        }
        
    }
}


struct CSGamesTitle_Previews: PreviewProvider {
    static var previews: some View {
        Title()
    }
}
