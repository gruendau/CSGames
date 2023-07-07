//
//  AppUserInstruction.swift
//  CSGames
//
//  Created by Test on 20.04.22.
//

import SwiftUI

struct CSAppUserInstructions: View {
    
    @EnvironmentObject var vp: CSSettings
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            
            // 1.Layer
            Color.black
            
            // 2. Layer
            VStack(alignment: .leading) {
                Text("User Instructions")
                    .font(.title3)
                    .bold()
                    .padding(.bottom)
                
                VStack(alignment: .leading) {
                    Text("Tap on screen to render squarebox.")
                        .padding(.vertical, 1)
                    Text("Tap on single square to render it.")
                        .padding(.vertical, 1)
                    Text("Tap on top buttons to change number of squares.")
                        .padding(.vertical, 1)
                    Text("Tap on bottom buttons to change size of squarebox.")
                        .padding(.vertical, 1)
                    Text("Tap on title to reset data.")
                        .padding(.vertical, 1)
                    Text("Tap on copyright to get app info.")
                        .padding(.vertical, 1)
                }
                .padding(.leading, 15)
                
                Spacer()
            }
            .padding(.leading)
            .padding(.top, -35)
            
        }
        .padding(.horizontal, 20)
        .foregroundColor(vp.textColor)
        .background(vp.screenBackgroundColor)
        
        
    }
}


struct CSAppUserInstructions_Previews: PreviewProvider {
    static var previews: some View {
        CSAppUserInstructions()
            .environmentObject(CSSettings())
    }
}
