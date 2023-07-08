//
//  InfoTitle.swift
//  CSGames
//
//  Created by volker on 09.07.23.
//

import SwiftUI

struct InfoTitle: View {
    
    @EnvironmentObject var set: Settings
    
    let title: String
    @Binding var show: Bool
    
    var body: some View {
        
        Text(title)
            .font(.title3)
            .bold()
            .foregroundColor(.blue)
            .padding(.bottom)
            .onTapGesture {
                show = false
            }
        
    }
}

struct InfoTitle_Previews: PreviewProvider {
    static var previews: some View {
        InfoTitle(title: "Info", show: .constant(true))
            .environmentObject(Settings())
    }
}
