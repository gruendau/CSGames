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
            Color.black
            
            // 2. Layer
            VStack(alignment: .leading) {
                
                CSInfoTitle(title: "Game Data",
                            show: $set.showData)
                
                VStack(alignment: .leading) {
                    Text("Text ...")
                        .padding(.vertical, 1)

                }
                //.padding(.leading, 15)
                
                Spacer()
            }
            .padding(.leading, set.paddingInfoLeading)    // 30
            .padding(.top, set.paddingInfoTop)     // 25
            
        }
        .padding(.horizontal, set.paddingInfoHorizontal)    //20
        .foregroundColor(set.colorForeground)
        .background(set.colorBackground)
        
    }
}


struct CSAppData_Previews: PreviewProvider {
    static var previews: some View {
        CSAppData()
            .environmentObject(CSSettings())
    }
}
