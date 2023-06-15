//
//  CSGamesTitle.swift
//  CSGames
//
//  Created by Test on 14.04.22.
//

import SwiftUI

struct ForegroundGradient1: ViewModifier {
    func body(content: Content) -> some View {
        content
            .gradientForeground(colors: [
                CSColors(withoutBlack: true).color,
                CSColors(withoutBlack: true).color,
                CSColors(withoutBlack: true).color])
        
            .shadow(color: CSColors(withoutBlack: true).color,
                    radius: 1.3, x: -1, y: 1)
    }
}

extension View {
    func foregroundGradient1 () -> some View {
        modifier(ForegroundGradient1())
    }
}

struct CSGamesTitle: View {
    
    @State var refreshTitle = 1
    
    var body: some View {
        
        
        HStack {
            Button(action: {
                refreshTitle += 1
            }, label: {
                Text("CSGames")
                    .bold()
                    .font(.largeTitle)
                    .foregroundGradient1()
                
//                    .foregroundColor(.white)
//
//                    .foregroundColor(CSColors(withoutBlack: true).color)
//
//                    .gradientForeground(colors:
//                            [CSColors(withoutBlack: true).color,
//                             CSColors(withoutBlack: true).color,
//                             CSColors(withoutBlack: true).color])
//
//                    .background(LinearGradient(gradient: Gradient(colors: [.red, .orange, .yellow, .green, .blue]), startPoint: .leading, endPoint: .trailing))
//
//                    .shadow(color: CSColors(withoutBlack: true).color, radius: 1.3, x: -1, y: 1)
            })
            
            Text("\(refreshTitle)").hidden()
        }
        
    }
}

struct CSGamesTitle_Previews: PreviewProvider {
    static var previews: some View {
        CSGamesTitle()
    }
}
