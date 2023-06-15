//
//  ColorChooserView.swift
//  CSGames
//
//  Created by Test on 14.04.22.
//

import SwiftUI

struct SwiftUIColor: Identifiable {
    var id: UUID
    let name: String
    let color: Color
    
    init (_ name: String, _ color: Color) {
        self.id = UUID()
        self.name = name
        self.color = color
    }
}

let swiftUIColors = [
    SwiftUIColor(".black", .black),
    SwiftUIColor(".white", .white),
    SwiftUIColor(".red", .red),
    SwiftUIColor(".green", .green),
    SwiftUIColor(".blue", .blue),
    SwiftUIColor(".yellow", .yellow),
    SwiftUIColor(".purple", .purple),
    SwiftUIColor(".cyan", .cyan),
    SwiftUIColor(".orange", .orange),
    SwiftUIColor(".pink", .pink),
    SwiftUIColor(".mint", .mint),
    SwiftUIColor(".indigo", .indigo),
    SwiftUIColor(".brown", .brown),
    SwiftUIColor(".teal", .teal),
    SwiftUIColor(".gray", .gray),
//    SwiftUIColor(".primary", .primary),
//    SwiftUIColor(".secondary", .secondary),
//    SwiftUIColor(".accentColor", .accentColor)
]

struct ColorChooseSquare: View {
    
    let color: Color
    let borderColor: Color
    @Binding var bindedColor: Color
    
    @EnvironmentObject var csm: ColoredSquaresModel
    @EnvironmentObject var vp: ViewParameter
    
    @State var isHovered = false

    
//    init (color: Color = .red,
//          borderColor: Color = .white,
//          newColor: Binding<Color>) {
//        self.color = color
//        self.borderColor = borderColor
//        self.newColor = newColor
//    }
        
    var body: some View {
        
        ZStack {
            
            // Border of color chooser square for active color
            Rectangle()
                .frame(width: 14 + 4, height: 14 + 4)
                .foregroundColor(vp.screenBackgroundColor == . red ? .blue : .red)
                .padding(-3)
                .opacity(color == bindedColor ? 1 : 0)
            
            // Interior of color chooser square
            Rectangle()
                .frame(width: 14, height: 14)
                .border(vp.screenBackgroundColor == . red ? .blue : .red)
                .padding(-3)
                .onTapGesture() { bindedColor = color }
                .foregroundColor(isHovered ? .green : color)
                .onHover { over in isHovered = over }
                
        }
    }
}



struct ColorChooser: View {
    
    let text: String
    @Binding var bindedColor: Color
    
    @EnvironmentObject var csm: ColoredSquaresModel
    @EnvironmentObject var vp: ViewParameter
    
    var body: some View {
    
        VStack(alignment: .leading) {
            
            Text(text)
            
            HStack {
                
                ForEach(swiftUIColors[0..<swiftUIColors.count]) {
                    ColorChooseSquare(color: $0.color,
                                      borderColor: .white,
                                      bindedColor: $bindedColor)
                                      //bindedColor: $vp.screenBackgroundColor)
                }

            }
            .padding([.top], -8)
            .padding([.leading], 15)
            
        }
    }
}


struct ColorChooser_Previews: PreviewProvider {
    
    @State static var bindedColor: Color = .white
    
    static var previews: some View {
        ColorChooser(text: "Test Color", bindedColor: $bindedColor)
            .environmentObject(ColoredSquaresModel())
            .environmentObject(ViewParameter())
    }
}
