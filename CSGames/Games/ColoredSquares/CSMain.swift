//
//  ColoredSquaresAppView.swift
//  ColoredSquares
//
//  Created by Test on 14.04.22.
//

import SwiftUI

struct CSMain: View {
    
    @StateObject var csm = CSModel()
    @StateObject var vp = CSSettings()
    
    @Binding var isAppActive: Bool
    
    var body: some View {
        
        ZStack {
            
            // 1. Layer
            // Background for screen
            Rectangle()
                .foregroundColor(vp.colorBackground)
            
            // 2. Layer
            // Content of screen
            VStack {
                
                // Title
                CSTitle(isAppActive: $isAppActive)
                    .padding([.top], vp.paddingTitleTop)
                
                // Content
                ZStack {
                    // 1.Layer
                    // Game
                    CSGame()
                        .onTapGesture() {
                            csm.updateSquarebox()
                        }
                    
                    // 2.Layer
                    // Info
                    CSInfo()
                        .opacity(vp.showAppInfo ? 1 : 0)
                }
                
                // Copyright
                Copyright()
                    .padding([.bottom], vp.paddingCopyrightBottom)
                
            }
            
        }
        .environmentObject(csm)
        .environmentObject(vp)
        
    }
}


//struct CSMain_Previews: PreviewProvider {
//    static var previews: some View {
//        CSMain(isAppActive: .constant(true))
//        //.environmentObject(CSModel())
//        //.environmentObject(CSSettings())
//    }
//}
