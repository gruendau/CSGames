//
//  CSInfoSelector.swift
//  CSGames
//
//  Created by volker on 07.07.23.
//

import SwiftUI

struct CSInfoSelector: View {
    
    @EnvironmentObject var set: CSSettings
    
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


//struct CSInfoSelector_Previews: PreviewProvider {
//    static var previews: some View {
//        CSInfoSelector()
//            .environmentObject(CSSettings())
//    }
//}
