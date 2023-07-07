//
//  ScreenView.swift
//  ColoredSquares
//
//  Created by Test on 12.04.22.
//

import SwiftUI

struct CSMainApp: View {
    
    //@Binding var showUserInstruction: Bool
    
    @EnvironmentObject var csm: ColoredSquaresModel
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
                
                Spacer()
                
                CSSquarebox()
                
                Spacer()
                
                CSButton()
                
                Spacer()
                
                Copyright()
                    .padding([.bottom], vp.copyrightPaddingBottom)

            }
            
        }
        
    }
}


struct CSMainApp_Previews: PreviewProvider {
    static var previews: some View {
        CSMainApp()
            .environmentObject(ColoredSquaresModel())
            .environmentObject(CSSettings())
            //.edgesIgnoringSafeArea(.all)
    }
}
