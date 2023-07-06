//
//  CopyrightView.swift
//  ColoredSquares
//
//  Created by Test on 13.04.22.
//

import SwiftUI

struct Copyright: View {
    
    @EnvironmentObject var vp: ViewParameter
    
    var body: some View {
        
        HStack {
            Button(action: {
                vp.showAppInfo.toggle()
            }, label: { Text("© 2022 by volker")
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
            .environmentObject(ViewParameter())
    }
}
