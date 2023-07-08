//
//  ButtonView.swift
//  ColoredSquares
//
//  Created by Test on 13.04.22.
//

import SwiftUI


struct CSButtonBox: View {
    
    @EnvironmentObject var csm: CSViewModel
    @EnvironmentObject var set: CSSettings
    
    var body: some View {
        
        // Buttons number of squares
        VStack {
            
            // Buttons - number of squares
            HStack {
                
                Button(action: {
                    csm.increaseNumber_SquaresPerEdge()
                }, label: { CSRoundButton("+") })
                
                Button(action: {
                    csm.decreaseNumber_SquaresPerEdge()
                }, label: { CSRoundButton("-") })
                
            }
            
            // Buttons - size of square box
            HStack {
                
                Button(action: {
                    csm.increaseSize_Squarebox()
                }, label: { CSRoundButton("+") })
                
                Button(action: {
                    csm.decreaseSize_Squarebox()
                }, label: { CSRoundButton("-") })
                
            }
            
        }
        
    }
    
    
    struct CSRoundButton: View {
        
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
                    .padding(.top, -3)
                    .padding(.leading, 1)
            }.padding(5)
            
        }
    }
    
}


struct CSButtonBox_Previews: PreviewProvider {
    static var previews: some View {
        CSButtonBox()
            .environmentObject(CSViewModel())
            .environmentObject(CSSettings())
    }
}
