//
//  Info.swift
//  CSGames
//
//  Created by volker on 09.07.23.
//

import SwiftUI

struct Info: View {
    
    init () {
        // Remove separator lines
        UITableView.appearance().separatorColor = .clear
        // Set background color
        UITableView.appearance().backgroundColor = .black

        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }

    @EnvironmentObject var set: Settings

    var body: some View {

        ZStack {
            
            // 1. Layer
            // Content list
            List {
                
                InfoSelector(name: "About",
                             show: $set.showAbout)
                
            }
            .padding(.leading, 10)
            .padding(.top, -20)
            
            // 2. Layer
            // Show Info Pages
            if set.showAbout {
                About()
            }
            
        }
        .background(set.colorBackground)

    }
}

struct Info_Previews: PreviewProvider {
    static var previews: some View {
        Info()
            .environmentObject(Settings())
    }
}
