//
//  ColoredSquareView.swift
//  ColoredSquares
//
//  Created by Test on 12.04.22.
//

import SwiftUI

struct CSSquarebox: View {
    
    @EnvironmentObject var csm: CSModel
    @EnvironmentObject var vp: CSSettings
    
    var body: some View {
        
        ZStack {
            
            // MARK: - Squaresbox border color
            Rectangle()
                .frame(width: csm.size_Squarebox + vp.squarebox.borderSize,
                       height: csm.size_Squarebox + vp.squarebox.borderSize,
                       alignment: .center)
                .foregroundColor(vp.squarebox.borderColor)
                .blur(radius: vp.squarebox.borderIsBlured ?  vp.squarebox.borderBlurRadius : 0)
                //.shadow(color: CSColors(withoutBlack: true).color, radius: 1.3, x: -1, y: 1)
            
            // MARK: - Squares
            ZStack {
                VStack(alignment: .center, spacing: 0) {

                    ForEach(0..<csm.number_SquaresPerEdge, id: \.self) {_ in
                        HStack (alignment: .center, spacing: 0) {
                            ForEach(0..<csm.number_SquaresPerEdge, id: \.self) {_ in
                                CSSquare()
                            }
                        }.frame(width: csm.size_Squarebox,
                                height: csm.size_Square)
                    }
                }
            }
            .background(vp.squarebox.backgroundColor)
            
        }
        
    }
}

struct ColoredSquareboxView_Previews: PreviewProvider {
    static var previews: some View {
        CSSquarebox()
            .environmentObject(CSModel())
            .environmentObject(CSSettings())
    }
}
