//
//  InfoSelector.swift
//  CSGames
//
//  Created by volker on 09.07.23.
//

import SwiftUI

struct InfoSelector: View {
    
    @EnvironmentObject var set: Settings
    
    let name: String
    @Binding var show: Bool
    
    let listRowBGColor: Color = .black
    
    var body: some View {
        
        Text(name)
            .font(.title3)
            .bold()
            .foregroundColor(.blue)
            .onTapGesture {
                show = true
            }
            .listRowBackground(listRowBGColor)
        
    }
}

struct InfoSelector_Previews: PreviewProvider {
    static var previews: some View {
        InfoSelector(name: "Info", show: .constant(true))
            .environmentObject(Settings())
    }
}
