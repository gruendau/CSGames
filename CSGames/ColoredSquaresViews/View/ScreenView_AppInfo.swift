//
//  ScreenView_AppInfo.swift
//  ColoredSquares
//
//  Created by Test on 13.04.22.
//

import SwiftUI

struct ScreenView_AppInfo: View {
    
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
                
                AppInfoView()
                    //.padding(.vertical, -150)

                Spacer()
                
                CopyrightView()
                    .padding([.bottom], vp.copyright.paddingBottom)
                
            }
            
            
        }
        
    }
}

struct ScreenView_AppInfo_Previews: PreviewProvider {
    static var previews: some View {
        ScreenView_AppInfo()
            .environmentObject(ColoredSquaresModel())
            .environmentObject(ViewParameter())
            //.edgesIgnoringSafeArea(.all)
    }
}
