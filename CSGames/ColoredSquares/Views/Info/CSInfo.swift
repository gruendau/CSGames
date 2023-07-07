//
//  ScreenView_AppInfo.swift
//  ColoredSquares
//
//  Created by Test on 13.04.22.
//

import SwiftUI

struct CSInfo: View {

    @EnvironmentObject var csm: CSModel
    @EnvironmentObject var vp: CSSettings
    
    var body: some View {
        
        VStack {
            
            CSAppInfo()
            
            Spacer()
            
        }
        
    }
}


struct CSInfo_Previews: PreviewProvider {
    static var previews: some View {
        CSInfo()
            .environmentObject(CSModel())
            .environmentObject(CSSettings())
    }
}