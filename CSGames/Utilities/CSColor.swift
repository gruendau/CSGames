//
//  CSColor.swift
//  ColoredSquares
//
//  Created by Test on 12.04.22.
//

import SwiftUI


struct CSColors {
    
    let colors: [Color] = [.red, .green, .blue, .yellow, .purple,
                           .cyan, .orange, .pink, .indigo, .brown,
                           .mint, .black, .white, .gray]
    
    let names: [String] = ["red", "green", "blue", "yellow", "purple",
                           "cyan", "orange", "pink", "indigo", "brown",
                           "mint", "black", "white", "gray"]
    
    let withoutBlack: Bool
    
    var color: Color {
        get { colors[number] }
        set { processColor(newValue) }
    }
    var name: String {
        get { names[number] }
        set { processName(newValue) }
    }
    var number: Int = 0
    
    init (withoutBlack: Bool = false) {
        self.withoutBlack = withoutBlack
        random()
    }
    
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
    
    mutating func random () {
        var foundNumber = false
        while !foundNumber {
            number = Int.random(in: 0..<colors.endIndex)
            if withoutBlack { if colors[number] != .black { foundNumber = true } }
            else { foundNumber = true }
        }
    }
      
}

struct ViewTitle: View {
    
    var text: String
    
    init (_ text: String = "<Title>") {
        self.text = text
    }
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            //.bold()
    }
}

struct ViewSubtitle: View {
    
    var text: String
    
    init (_ text: String = "<Title>") {
        self.text = text
    }
    
    var body: some View {
        Text(text)
            .font(.subheadline)
    }
}



