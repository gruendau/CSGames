//
//  RandomTricolorBackground.swift
//  CSGames
//
//  Created by volker on 08.07.23.
//

import SwiftUI


extension View {
    func randomTricolorBackground () -> some View {
        modifier(RandomTricolorBackground())
    }
}


private struct RandomTricolorBackground: ViewModifier {
    func body(content: Content) -> some View {
        content
            .gradientBackground(colors: [
                RandomColor(withoutBlack: true).color,
                RandomColor(withoutBlack: true).color,
                RandomColor(withoutBlack: true).color])
        
            //.shadow(color: RandomColor(withoutBlack: true).color,
            //        radius: 1.3, x: -1, y: 1)
    }
}


extension View {
    func gradientBackground(colors: [Color]) -> some View {
        self.background(
            LinearGradient(
                colors: colors,
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
        )
        .mask(self)
    }
}
