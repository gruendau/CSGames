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
    @EnvironmentObject var vp: ViewParameter
    
    var body: some View {
        
        ZStack {
            
            // Background for screen
            Rectangle()
                .foregroundColor(vp.screenBackgroundColor)
            
            // Content of screen
            VStack {
                
                TitleView()
                    .padding([.top], vp.titlePaddingTop)
                
                Spacer()
                
                CSSquarebox()
                
                Spacer()
                
                ButtonView()
                
                Spacer()
                
                CopyrightView()
                    .padding([.bottom], vp.copyright.paddingBottom)

            }
            
        }
        
    }
}


struct CSMainApp_Previews: PreviewProvider {
    static var previews: some View {
        CSMainApp()
            .environmentObject(ColoredSquaresModel())
            .environmentObject(ViewParameter())
            //.edgesIgnoringSafeArea(.all)
    }
}
