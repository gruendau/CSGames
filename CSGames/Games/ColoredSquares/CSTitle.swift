//
//  TitleView.swift
//  ColoredSquares
//
//  Created by Test on 13.04.22.
//

import SwiftUI

struct CSTitle: View {
    
    @EnvironmentObject var csm: CSViewModel
    @EnvironmentObject var set: CSSettings
    
    // Binding to exit app
    @Binding var showApp: Bool
    
    var body: some View {
        
        Text(set.textTitle)
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
                        showApp = false
                    }
            )
        
    }
}


struct CSTitle_Previews: PreviewProvider {
    static var previews: some View {
        CSTitle(showApp: .constant(true))
            .environmentObject(CSViewModel())
            .environmentObject(CSSettings())
    }
}
