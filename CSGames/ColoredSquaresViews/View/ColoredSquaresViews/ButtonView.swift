//
//  ButtonView.swift
//  ColoredSquares
//
//  Created by Test on 13.04.22.
//

import SwiftUI


struct RoundButtonView: View {
    
    var sign: String
    
    init (_ sign: String = "+") {
        self.sign = sign
    }

    var body: some View {
        
        ZStack {
            Circle()
                .frame(width: 35, height: 35)
            Text(sign)
                .bold()
                .foregroundColor(.white)
                .font(.largeTitle)
                .padding([.top], -3)
                .padding([.leading], 1)
        }.padding(5)
        
    }
}


struct ButtonView: View {
    
    @EnvironmentObject var csm: ColoredSquaresModel
    @EnvironmentObject var vp: ViewParameter
    
    var body: some View {
        
        // Buttons number of squares
        VStack {
            
            HStack {
                
                Button(action: {
                    csm.increaseNumber_SquaresPerEdge()
                }, label: { RoundButtonView("+") })
                
                Button(action: {
                    csm.decreaseNumber_SquaresPerEdge()
                }, label: { RoundButtonView("-") })
                
            }
            
            // Buttons size of big square
            HStack {
                
                Button(action: {
                    csm.increaseSize_Squarebox()
                }, label: { RoundButtonView("+") })
                
                Button(action: {
                    csm.decreaseSize_Squarebox()
                }, label: { RoundButtonView("-") })
                
            }
            
        }
        

        
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
            .environmentObject(ColoredSquaresModel())
            .environmentObject(ViewParameter())
    }
}
