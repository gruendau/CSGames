//
//  CSColor.swift
//  ColoredSquares
//
//  Created by Test on 12.04.22.
//

import SwiftUI


/// Returns a random color.
///
/// The color set is:
///
///   red, green, blue, yellow, purple, cyan, orange, pink, indigo, brown, mint, black, white and gray.
///
/// Code example:
/// ```swift
/// let color = RandomColor()
/// let color = RandomColor(withoutBlack: true)
/// ```
///
struct RandomColor {
    
    // MARK: Private Properties
    private let colors: [Color] = [.red, .green, .blue, .yellow, .purple,
                           .cyan, .orange, .pink, .indigo, .brown,
                           .mint, .black, .white, .gray]
    
    private let names = ["red", "green", "blue", "yellow", "purple",
                         "cyan", "orange", "pink", "indigo", "brown",
                         "mint", "black", "white", "gray"]
    
    // Number of the random color
    private var colorNumber = 0
    
    //
    private let withoutBlack: Bool
    
    
    // MARK: Public properties
    /// Color of the random color.
    var color: Color { colors[colorNumber] }
    
    /// Name of the random color.
    var name: String { names[colorNumber] }

    
    // MARK: Initializer
    
    /// Initialize RandomColor.
    ///
    /// Set withoutBlack to _true_ if random black is not allowed.
    init (withoutBlack: Bool = false) {
        self.withoutBlack = withoutBlack
        random()
    }
    
    // MARK: Private Methodes
    private mutating func random () {
        var foundNumber = false
        while !foundNumber {
            colorNumber = Int.random(in: 0..<colors.endIndex)
            if withoutBlack {
                if colors[colorNumber] != .black { foundNumber = true }
                
            } else {
                foundNumber = true
            }
        }
    }
      
}

/*
/// Returns a random color.
///
/// The color set is:
///
///   red, green, blue, yellow, purple, cyan, orange, pink, indigo, brown, mint, black, white and gray.
///
/// Code example:
/// ```swift
/// let color = RandomColor()
/// let color = RandomColor(withoutBlack: true)
/// ```
///
struct RandomColor {
    
    // Private Properties
    private let colors: [Color] = [.red, .green, .blue, .yellow, .purple,
                           .cyan, .orange, .pink, .indigo, .brown,
                           .mint, .black, .white, .gray]
    
    private let names: [String] = ["red", "green", "blue", "yellow", "purple",
                           "cyan", "orange", "pink", "indigo", "brown",
                           "mint", "black", "white", "gray"]
    
    private var number: Int = 0
    
    private let withoutBlack: Bool
    
    // Public properties
    /// Color of the random color.
    private(set) var color: Color {
        get { colors[number] }
        set { processColor(newValue) }
    }
    /// Name of the random color.
    private(set) var name: String {
        get { names[number] }
        set { processName(newValue) }
    }
    
    // Initializer
    init (withoutBlack: Bool = false) {
        self.withoutBlack = withoutBlack
        random()
    }
    
    // Private Methodes
    private mutating func processColor (_ color: Color) {
        var n = -1
        for x in colors {
            n += 1
            if x == color { number = n; return }
        }
    }
    
    private mutating func processName (_ name: String) {
        var n = -1
        for x in names {
            n += 1
            if x == name { number = n; return }
        }
    }
    
    private mutating func random () {
        var foundNumber = false
        while !foundNumber {
            number = Int.random(in: 0..<colors.endIndex)
            if withoutBlack {
                if colors[number] != .black { foundNumber = true }
                
            } else {
                foundNumber = true
            }
        }
    }
      
}
*/

