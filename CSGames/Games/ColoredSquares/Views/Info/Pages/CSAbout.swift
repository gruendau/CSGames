//
//  CSAbout.swift
//  CSGames
//
//  Created by volker on 08.07.23.
//

import SwiftUI

struct CSAbout: View {
    
    @EnvironmentObject var set: CSSettings
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            
            // 1.Layer
            // Background color
            Color.black
            
            // 2. Layer
            // Content
            VStack(alignment: .leading) {
                
                CSInfoTitle(title: "About",
                            show: $set.showAbout)
                
                VStack(alignment: .leading) {
                    Text("Text ...")
                        .padding(.vertical, 1)

                }
                
                Spacer()
            }
            .padding(.leading, 30)
            .padding(.top, 25)
            
        }
        .padding(.horizontal, 20)
        .foregroundColor(set.colorForeground)
        
    }
}

struct CSAbout_Previews: PreviewProvider {
    static var previews: some View {
        CSAbout()
            .environmentObject(CSSettings())
    }
}
