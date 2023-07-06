//
//  CopyrightView.swift
//  ColoredSquares
//
//  Created by Test on 13.04.22.
//

import SwiftUI

struct CSCopyright: View {
    
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

struct Copyright {
    var text: String = "© 2022 by volker"
    var font: Font = .footnote
    var color: Color = .red
    var opacity: CGFloat = 0.8
    var paddingBottom: CGFloat = 30
    
//    init (text: String = "© 2022 by volker",
//          font: Font = .footnote,
//          color: Color = .red,
//          opacity: CGFloat = 0.8,
//          paddingBottom: CGFloat = 30) {
//        self.text = text
//        self.font = font
//        self.color = color
//        self.opacity = opacity
//        self.paddingBottom = paddingBottom
//    }
}

struct CopyrightView_Previews: PreviewProvider {
    static var previews: some View {
        CSCopyright()
            .environmentObject(ViewParameter())
    }
}
