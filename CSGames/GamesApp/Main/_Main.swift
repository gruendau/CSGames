//
//  _Main.swift
//  CSGames
//
//  Created by volker on 08.07.23.
//

import SwiftUI

struct _Main<Content: View, Links: View>: View {
    
    @EnvironmentObject var set: Settings

    let content: Content
    let links: Links
    
    var body: some View {
        
        ZStack {
            
            // 1. Layer
            // Background
            Background()
                
            // 2. Layer
            // Content (title, content, copyright)
            VStack {
                
                // Title
                Title()
                
                // Content
                VStack {
                    content
                }
                .foregroundColor(set.colorForeground)
                .padding(.top, set.paddingContentTop)
                
                Spacer()
            
                // Copyright
                Copyright()

            }
            
            // 3. Layer
            // Chosen game
            links
                
        }
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct _Main_Previews: PreviewProvider {
    static var previews: some View {
        _Main(content: Text("Content"), links: Text("Links"))
            .environmentObject(Settings())
    }
}
