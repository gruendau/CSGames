//
//  ForegroundGradient1.swift
//  CSGames
//
//  Created by volker on 06.07.23.
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


