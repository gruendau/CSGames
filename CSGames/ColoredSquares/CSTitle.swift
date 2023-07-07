//
//  TitleView.swift
//  ColoredSquares
//
//  Created by Test on 13.04.22.
//

import SwiftUI

struct CSTitle: View {
    
    @EnvironmentObject var csm: CSModel
    @EnvironmentObject var vp: CSSettings
    
    var body: some View {
        
        Text("Colored Squares")
            .font(.largeTitle)
            .bold()
            .foregroundGradient1()
        
            // Reset Colored Squares
            .onTapGesture {
                csm.reset()
            }
        
            // Quit Colored Squares
            .highPriorityGesture(
                TapGesture(count: 2)
                    .onEnded { _ in
                        vp.isAcitive_ColoredSquares = false
                    }
            )
        
    }
}


struct CSTitle_Previews: PreviewProvider {
    static var previews: some View {
        CSTitle()
            .environmentObject(CSModel())
            .environmentObject(CSSettings())
    }
}
