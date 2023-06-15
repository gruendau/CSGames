//
//  CopyrightView.swift
//  ColoredSquares
//
//  Created by Test on 13.04.22.
//

import SwiftUI

struct CopyrightView: View {
    
    @EnvironmentObject var vp: ViewParameter
    
    var body: some View {
        
        HStack {
            Button(action: {
                vp.showAppInfo.toggle()
            }, label: { Text(vp.copyright.text)
                    .font(vp.copyright.font)
                    .foregroundColor(vp.copyright.color)
                    .opacity(vp.copyright.opacity)
            })
        }
        
    }
}

struct CopyrightView_Previews: PreviewProvider {
    static var previews: some View {
        CopyrightView()
            .environmentObject(ViewParameter())
    }
}
