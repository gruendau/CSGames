//
//  ColoredSquareView.swift
//  ColoredSquares
//
//  Created by Test on 12.04.22.
//

import SwiftUI

struct CSSquarebox: View {
    
    @EnvironmentObject var csm: CSViewModel
    @EnvironmentObject var set: CSSettings
    
    var body: some View {
        
        ZStack {
            
            // MARK: - Squaresbox border color
            Rectangle()
                .frame(width: csm.size_Squarebox + set.squarebox.borderSize,
                       height: csm.size_Squarebox + set.squarebox.borderSize,
                       alignment: .center)
                .foregroundColor(set.squarebox.borderColor)
                .blur(radius: set.squarebox.borderIsBlured ? set.squarebox.borderBlurRadius : 0)

            
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
            .background(set.squarebox.backgroundColor)
            
        }
        
    }
}

struct ColoredSquareboxView_Previews: PreviewProvider {
    static var previews: some View {
        CSSquarebox()
            .environmentObject(CSViewModel())
            .environmentObject(CSSettings())
    }
}
