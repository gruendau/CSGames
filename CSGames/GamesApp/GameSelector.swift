//
//  AppText.swift
//  CSGames
//
//  Created by volker on 07.07.23.
//

import SwiftUI

struct GameSelector: View {
    
    @EnvironmentObject var set: Settings
    
    let name: String
    @Binding var isActive: Bool
    
    var body: some View {
        
        Text(name)
            .foregroundGradient1()
            .font(.title2)
            .onTapGesture {
                isActive = true
            }
                
    }
}


struct GameSelector_Previews: PreviewProvider {
    static var previews: some View {
        GameSelector(name: "Super Mario", isActive: .constant(true))
            .environmentObject(Settings())
    }
}
