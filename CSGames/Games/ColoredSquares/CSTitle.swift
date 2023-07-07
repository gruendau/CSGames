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
    
    @Binding var isAppActive: Bool
    
    var body: some View {
        
        Text(vp.textTitle)
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
                        isAppActive = false
                    }
            )
        
    }
}


struct CSTitle_Previews: PreviewProvider {
    static var previews: some View {
        CSTitle(isAppActive: .constant(true))
            .environmentObject(CSModel())
            .environmentObject(CSSettings())
    }
}
