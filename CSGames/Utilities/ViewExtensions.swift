//
//  ViewExtensions.swift
//  ColoredSquares
//
//  Created by Test on 12.04.22.
//

import SwiftUI

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
