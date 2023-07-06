//
//  ColoredSquareView.swift
//  ColoredSquares
//
//  Created by Test on 12.04.22.
//

//  Rotation effect
//    https://daddycoding.com/2020/03/19/swiftui-rotation-effect/

import SwiftUI

struct CSSquare: View {
    
    @EnvironmentObject var csm: ColoredSquaresModel
    @EnvironmentObject var vp: ViewParameter

    var body: some View {
        
        ZStack {
            
            Button(action: {
                csm.updateSquare()
            }, label: {
                
                ZStack {
                    // Colored square
                    Rectangle()
                        .foregroundColor(CSColors().color) //})
                        //.gradientForeground(colors: [CSColors().color,
                        //                             CSColors().color,
                        //                             CSColors().color])
                        .rotationEffect(Angle(degrees: csm.randomAngle(30).big))
                    
                    // Border
                    Rectangle()
                        .strokeBorder(.black)
                        //.foregroundColor(.black)
                        .rotationEffect(Angle(degrees: csm.randomAngle(30).small))
                    
                }
                .frame(width: csm.size_Square,
                       height: csm.size_Square)
            })
            
            // Hidden Text for view update
            Text("update: \(String(csm.isUpdatedSquare))").hidden()
        }
        
    }
}

struct ColoredSquareView_Previews: PreviewProvider {
    static var previews: some View {
        CSSquare()
            .environmentObject(ColoredSquaresModel())
            .environmentObject(ViewParameter())
            .frame(width: 200, height: 200, alignment: .center)
    }
}
