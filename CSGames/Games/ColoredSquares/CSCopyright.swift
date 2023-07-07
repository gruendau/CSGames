//
//  CSCopyright.swift
//  CSGames
//
//  Created by volker on 07.07.23.
//

import SwiftUI

/// Copyright for CSGames.
///
/// Shows app info when tapped.
struct CSCopyright: View {
    
    @EnvironmentObject var vp: CSSettings
    @EnvironmentObject var s: Settings
    
    var body: some View {
        
        HStack {
            Button(action: {
                vp.showAppInfo.toggle()
            }, label: { Text(s.textCopyright)
                    .font(.footnote)
                    .foregroundColor(.red)
                    .opacity(0.8)
            })
        }
        
    }
        
}


struct CSCopyright_Previews: PreviewProvider {
    static var previews: some View {
        CSCopyright()
            .environmentObject(CSSettings())
            .environmentObject(Settings())
    }
}

