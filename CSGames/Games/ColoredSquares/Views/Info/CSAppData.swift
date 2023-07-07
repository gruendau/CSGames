//
//  AppData.swift
//  CSGames
//
//  Created by Test on 20.04.22.
//

import SwiftUI

struct CSAppData: View {
    
    @EnvironmentObject var csm: CSViewModel
    @EnvironmentObject var set: CSSettings
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            
            // 1.Layer
            Color.black
            
            // 2. Layer
            VStack(alignment: .leading) {
                Text("App Data")
                    .font(.title3)
                    .bold()
                    .padding(.bottom)
                
                VStack(alignment: .leading) {
                    Text("Text ...")
                        .padding(.vertical, 1)

                }
                .padding(.leading, 15)
                
                Spacer()
            }
            .padding(.leading)
            .padding(.top, -35)
            
        }
        .padding(.horizontal, 20)
        .foregroundColor(set.colorForeground)
        .background(set.colorBackground)
        
    }
}


struct CSAppData_Previews: PreviewProvider {
    static var previews: some View {
        CSAppData()
            .environmentObject(CSViewModel())
            .environmentObject(CSSettings())
    }
}
