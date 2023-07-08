//
//  ScreenView_AppInfo.swift
//  ColoredSquares
//
//  Created by Test on 13.04.22.
//

import SwiftUI

struct CSInfo: View {
    
    init () {
        // Remove separator lines
        UITableView.appearance().separatorColor = .clear
        // Set background color
        UITableView.appearance().backgroundColor = .black

        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }


    @EnvironmentObject var set: CSSettings

    var body: some View {

        ZStack {
            
            // 1. Layer
            // Content list
            List {
                
                CSInfoSelector(name: "User Instructions",
                               show: $set.showUserInstructions)
                
                CSInfoSelector(name: "Data",
                               show: $set.showData)
                
                CSInfoSelector(name: "Statistics",
                               show: $set.showStatistics)
                
                CSInfoSelector(name: "Customization",
                               show: $set.showCustomization)
                
                CSInfoSelector(name: "About",
                               show: $set.showAbout)
                
                
            }
            .padding(.leading, 10)
            .padding(.top, -20)
            
            // 2. Layer
            // Show Info Pages
            if set.showUserInstructions {
                CSUserInstructions()
            }
            if set.showData {
                CSData()
            }
            if set.showStatistics {
                CSStatistics()
            }
            if set.showCustomization {
                CSCustomization()
            }
            if set.showAbout {
                CSAbout()
            }
            
        }
        .background(set.colorBackground)

    }
}


struct CSInfo_Previews: PreviewProvider {
    static var previews: some View {
        CSInfo()
            .environmentObject(CSSettings())
    }
}
