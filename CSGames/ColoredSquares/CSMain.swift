//
//  ColoredSquaresAppView.swift
//  ColoredSquares
//
//  Created by Test on 14.04.22.
//

import SwiftUI

struct CSMain: View {
    
    @EnvironmentObject var csm: ColoredSquaresModel
    @EnvironmentObject var vp: ViewParameter
    
    var body: some View {
        
        ZStack {
            
            CSMainApp()
                .onTapGesture() {
                    csm.updateSquarebox()
            }
            
            CSMainAppInfo()
                .opacity(vp.showAppInfo ? 1 : 0)
        }
        
    }
}

struct CSMain_Previews: PreviewProvider {
    static var previews: some View {
        CSMain()
            .environmentObject(ColoredSquaresModel())
            .environmentObject(ViewParameter())
    }
}
