//
//  ScreenView_AppInfo.swift
//  ColoredSquares
//
//  Created by Test on 13.04.22.
//

import SwiftUI

struct CSInfo: View {

    @EnvironmentObject var set: CSSettings

    @State private var showSquareboxInfo = false

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
            //.background(set.colorBackground)
            
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
                //CSAppAbout()
            }
            
        }
        //.background(set.colorBackground)

    }
}


struct CSInfo_Previews: PreviewProvider {
    static var previews: some View {
        CSInfo()
            .environmentObject(CSSettings())
    }
}
