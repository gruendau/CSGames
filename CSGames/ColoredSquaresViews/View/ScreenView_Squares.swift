//
//  ScreenView.swift
//  ColoredSquares
//
//  Created by Test on 12.04.22.
//

import SwiftUI

struct ScreenView_Squares: View {
    
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
                
                ColoredSquareboxView()
                
                Spacer()
                
                ButtonView()
                
                Spacer()
                
                CopyrightView()
                    .padding([.bottom], vp.copyright.paddingBottom)

            }
            
        }
        
    }
}

struct ScreenView_Squares_Previews: PreviewProvider {
    static var previews: some View {
        ScreenView_Squares()
            .environmentObject(ColoredSquaresModel())
            .environmentObject(ViewParameter())
            //.edgesIgnoringSafeArea(.all)
    }
}
