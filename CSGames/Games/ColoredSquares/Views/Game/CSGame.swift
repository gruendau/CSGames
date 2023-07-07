//
//  ScreenView.swift
//  ColoredSquares
//
//  Created by Test on 12.04.22.
//

import SwiftUI

struct CSGame: View {
    
    @EnvironmentObject var csm: CSViewModel
    @EnvironmentObject var vp: CSSettings
    
    var body: some View {

        VStack {

            Spacer()
            
            CSSquarebox()
            
            Spacer()
            
            CSButton()
            
            Spacer()
            
        }
        
    }
}


struct CSGame_Previews: PreviewProvider {
    static var previews: some View {
        CSGame()
            .environmentObject(CSViewModel())
            .environmentObject(CSSettings())
    }
}
