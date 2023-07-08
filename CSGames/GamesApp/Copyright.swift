//
//  CopyrightView.swift
//  ColoredSquares
//
//  Created by Test on 13.04.22.
//

import SwiftUI


/// Copyright for CSGames.
///
/// Shows app info when tapped.
struct Copyright: View {
    
    @EnvironmentObject var s: Settings
    
    var body: some View {
        
        HStack {
            Button(action: {
                // s.showAppInfo.toggle()
            }, label: { Text(s.textCopyright)
                    .font(.footnote)
                    .foregroundColor(.red)
                    .opacity(0.8)
            })
        }
        
    }
        
}


struct Copyright_Previews: PreviewProvider {
    static var previews: some View {
        Copyright()
            .environmentObject(Settings())
    }
}
