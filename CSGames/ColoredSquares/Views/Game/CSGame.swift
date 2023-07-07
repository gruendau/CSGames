//
//  ScreenView.swift
//  ColoredSquares
//
//  Created by Test on 12.04.22.
//

import SwiftUI

struct CSGame: View {
    
    @EnvironmentObject var csm: CSModel
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
            .environmentObject(CSModel())
            .environmentObject(CSSettings())
    }
}
