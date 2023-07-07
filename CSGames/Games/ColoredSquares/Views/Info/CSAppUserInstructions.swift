//
//  AppUserInstruction.swift
//  CSGames
//
//  Created by Test on 20.04.22.
//

import SwiftUI

struct CSAppUserInstructions: View {
    
    @EnvironmentObject var set: CSSettings
    
    var body: some View {
        
        ZStack(alignment: .leading) {
            
            // 1.Layer
            Color.black
            
            // 2. Layer
            VStack(alignment: .leading) {
                
                CSInfoTitle(title: "User Instructions",
                            show: $set.showUserInstructions)
                
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
                
                Spacer()
            }
            .padding(.leading, 30)
            .padding(.top, 25)
            
        }
        .padding(.horizontal, 20)
        .foregroundColor(set.colorForeground)
        .background(set.colorBackground)
        
    }
}


struct CSAppUserInstructions_Previews: PreviewProvider {
    static var previews: some View {
        CSAppUserInstructions()
            .environmentObject(CSSettings())
    }
}
