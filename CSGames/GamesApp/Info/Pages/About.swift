//
//  About.swift
//  CSGames
//
//  Created by volker on 09.07.23.
//

import SwiftUI

struct About: View {
    @EnvironmentObject var set: Settings
    var body: some View {
        _InfoPage(content: Content())
    }
}


private struct Content: View {
    @EnvironmentObject var set: Settings
    var body: some View {
        
        Group {
            // CONTENT START ---------------------
            
            InfoTitle(title: "About",
                        show: $set.showAbout)
            
            VStack(alignment: .leading) {
                Text("Text ...")
                    .padding(.vertical, 1)

            }
            
            Spacer()
            
            // CONTENT END -----------------------
        }
        
    }
}

struct About_Previews: PreviewProvider {
    static var previews: some View {
        About()
            .environmentObject(Settings())
    }
}
