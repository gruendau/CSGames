//
//  RandomTricolorForeground.swift
//  CSGames
//
//  Created by volker on 06.07.23.
//

import SwiftUI

struct RandomTricolorForeground: ViewModifier {
    func body(content: Content) -> some View {
        content
            .gradientForeground(colors: [
                RandomColor(withoutBlack: true).color,
                RandomColor(withoutBlack: true).color,
                RandomColor(withoutBlack: true).color])
        
            .shadow(color: RandomColor(withoutBlack: true).color,
                    radius: 1.3, x: -1, y: 1)
    }
}

extension View {
    func randomTricolorForeground () -> some View {
        modifier(RandomTricolorForeground())
    }
}


extension View {
    // https://stackoverflow.com/questions/58991311/gradient-as-foreground-color-of-text-in-swiftui
    public func gradientForeground(colors: [Color]) -> some View {
        self.overlay(
            LinearGradient(
                colors: colors,
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
        )
        .mask(self)
    }
}


