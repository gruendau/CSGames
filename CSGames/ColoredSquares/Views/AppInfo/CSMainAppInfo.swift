//
//  ScreenView_AppInfo.swift
//  ColoredSquares
//
//  Created by Test on 13.04.22.
//

import SwiftUI

struct CSMainAppInfo: View {
    
    //@Binding var showUserInstruction: Bool
    
    @EnvironmentObject var csm: CSModel
    @EnvironmentObject var vp: CSSettings
    
    var body: some View {
        
        ZStack {
            
            // Background for screen
            Rectangle()
                .foregroundColor(vp.screenBackgroundColor)
            
            // Content of screen
            VStack {
                
                CSTitle()
                    .padding([.top], vp.titlePaddingTop)
                
                CSAppInfo()
                    //.padding(.vertical, -150)

                Spacer()
                
                Copyright()
                    .padding([.bottom], vp.copyrightPaddingBottom)
                
            }
            
            
        }
        
    }
}


struct CSMainAppInfo_Previews: PreviewProvider {
    static var previews: some View {
        CSMainAppInfo()
            .environmentObject(CSModel())
            .environmentObject(CSSettings())
            //.edgesIgnoringSafeArea(.all)
    }
}
