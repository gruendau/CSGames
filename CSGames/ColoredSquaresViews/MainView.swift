//
//  ColoredSquaresAppView.swift
//  ColoredSquares
//
//  Created by Test on 14.04.22.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var csm: ColoredSquaresModel
    @EnvironmentObject var vp: ViewParameter
    
    var body: some View {
        
        ZStack {
            
            ScreenView_Squares()
                .onTapGesture() {
                    csm.updateSquarebox()
            }
            
            ScreenView_AppInfo()
                .opacity(vp.showAppInfo ? 1 : 0)
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(ColoredSquaresModel())
            .environmentObject(ViewParameter())
    }
}
