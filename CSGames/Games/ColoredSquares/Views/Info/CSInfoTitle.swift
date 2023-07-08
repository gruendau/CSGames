//
//  CSInfoTitle.swift
//  CSGames
//
//  Created by volker on 08.07.23.
//

import SwiftUI

struct CSInfoTitle: View {
    
    @EnvironmentObject var set: CSSettings
    
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


struct CSInfoTitle_Previews: PreviewProvider {
    static var previews: some View {
        CSInfoTitle(title: "Info Title", show: .constant(true))
            .environmentObject(CSSettings())
    }
}
