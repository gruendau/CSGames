//
//  AppData.swift
//  CSGames
//
//  Created by Test on 20.04.22.
//

import SwiftUI

struct CSAppData: View {
    
    @EnvironmentObject var set: CSSettings
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            
            // 1.Layer
            // Background color
            Color.black
            
            // 2. Layer
            // Content
            VStack(alignment: .leading) {
                
                CSInfoTitle(title: "Game Data",
                            show: $set.showData)
                
                VStack(alignment: .leading) {
                    Text("Text ...")
                        .padding(.vertical, 1)

                }
                
                Spacer()
            }
            .padding(.leading, set.paddingInfoLeading)
            .padding(.top, set.paddingInfoTop)
            
        }
        .padding(.horizontal, set.paddingInfoHorizontal)
        .foregroundColor(set.colorForeground)
        
    }
}


struct CSAppData_Previews: PreviewProvider {
    static var previews: some View {
        CSAppData()
            .environmentObject(CSSettings())
    }
}
