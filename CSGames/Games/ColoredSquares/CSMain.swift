//
//  ColoredSquaresAppView.swift
//  ColoredSquares
//
//  Created by Test on 14.04.22.
//

import SwiftUI

struct CSMain: View {
    
    @StateObject var csm = CSViewModel()
    @StateObject var set = CSSettings()
    
    @Binding var isAppActive: Bool
    
    var body: some View {
        
        ZStack {
            
            // 1. Layer
            // Background for screen
            Color.black
//            Rectangle()
//                .foregroundColor(set.colorBackground)
            
            // 2. Layer
            // Content of screen
            VStack {
                
                // Title
                CSTitle(isAppActive: $isAppActive)
                    .padding([.top], set.paddingTitleTop)
                
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
                        .opacity(set.showAppInfo ? 1 : 0)
                }
                
                // Copyright
                CSCopyright()
                    .padding([.bottom], set.paddingCopyrightBottom)
                
            }
            
        }
        .environmentObject(csm)
        .environmentObject(set)
        
    }
}


//struct CSMain_Previews: PreviewProvider {
//    static var previews: some View {
//        CSMain(isAppActive: .constant(true))
//        //.environmentObject(CSModel())
//        //.environmentObject(CSSettings())
//    }
//}
