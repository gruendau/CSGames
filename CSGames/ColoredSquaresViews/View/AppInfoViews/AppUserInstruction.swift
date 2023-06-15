//
//  AppUserInstruction.swift
//  CSGames
//
//  Created by Test on 20.04.22.
//

import SwiftUI

struct AppUserInstruction: View {
    
    @EnvironmentObject var vp: ViewParameter
    
    var body: some View {
        
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text("User Instruction")
                    .font(.title3)
                .bold()
                
                VStack(alignment: .leading) {
                    Text("Tap on screen to render squarebox.")
                    Text("Tap on single square to render it.")
                    Text("Tap on top buttons to change number of squares.")
                    Text("Tap on bottom buttons to change size of squarebox.")
                    Text("Tap on title to reset data.")
                    Text("Tap on copyright to get app info.")
                }.padding([.leading], 15)
                
                Spacer()
            }
            .padding(.leading)
        
        }
        .padding(.horizontal, 20)
        .foregroundColor(vp.textColor)
        .background(vp.screenBackgroundColor)
        
        
    }
}

struct AppUserInstruction_Previews: PreviewProvider {
    static var previews: some View {
        AppUserInstruction()
            .environmentObject(ViewParameter())
    }
}
