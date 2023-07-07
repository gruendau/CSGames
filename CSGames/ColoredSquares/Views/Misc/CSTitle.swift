//
//  TitleView.swift
//  ColoredSquares
//
//  Created by Test on 13.04.22.
//

import SwiftUI

struct CSTitle: View {
    
    @EnvironmentObject var csm: CSModel
    @EnvironmentObject var vp: CSSettings
    
    var body: some View {
        
        HStack {
            
            VStack {
                Text("Colored Squares")
                    .bold()
                //.foregroundColor(.white)
                //.foregroundColor(CSColors(withoutBlack: true).color)
                    .gradientForeground(colors:
                        [Colors(withoutBlack: true).color,
                        Colors(withoutBlack: true).color,
                        Colors(withoutBlack: true).color])
                //.background(LinearGradient(gradient: Gradient(colors: [.red, .orange, .yellow, .green, .blue]), startPoint: .leading, endPoint: .trailing))
                    .font(.largeTitle)
                    .shadow(color: Colors(withoutBlack: true).color, radius: 1.3, x: -1, y: 1)
                    .onTapGesture {
                        csm.reset()
                    }
            }
            .highPriorityGesture(
                TapGesture(count: 2)
                    .onEnded { _ in
                        vp.isAcitive_ColoredSquares = false
                    }
            )
            
            
//            Button(action: {
//                csm.reset()
//            }, label: {
//                Text("Colored Squares")
//                    .bold()
//                //.foregroundColor(.white)
//                //.foregroundColor(CSColors(withoutBlack: true).color)
//                    .gradientForeground(colors: [CSColors(withoutBlack: true).color,
//                                                 CSColors(withoutBlack: true).color,
//                                                 CSColors(withoutBlack: true).color])
//                //.background(LinearGradient(gradient: Gradient(colors: [.red, .orange, .yellow, .green, .blue]), startPoint: .leading, endPoint: .trailing))
//                    .font(.largeTitle)
//                    .shadow(color: CSColors(withoutBlack: true).color, radius: 1.3, x: -1, y: 1)
//            })
        }
        
    }
}


struct CSTitle_Previews: PreviewProvider {
    static var previews: some View {
        CSTitle()
            .environmentObject(CSModel())
            .environmentObject(CSSettings())
    }
}
