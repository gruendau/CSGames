//
//  ColorChooserView.swift
//  CSGames
//
//  Created by Test on 14.04.22.
//

import SwiftUI

struct CSColor: Identifiable {
    var id: UUID
    let name: String
    let color: Color
    
    init (_ name: String, _ color: Color) {
        self.id = UUID()
        self.name = name
        self.color = color
    }
}

let colors = [
    CSColor(".black", .black),
    CSColor(".white", .white),
    CSColor(".red", .red),
    CSColor(".green", .green),
    CSColor(".blue", .blue),
    CSColor(".yellow", .yellow),
    CSColor(".purple", .purple),
    CSColor(".cyan", .cyan),
    CSColor(".orange", .orange),
    CSColor(".pink", .pink),
    CSColor(".mint", .mint),
    CSColor(".indigo", .indigo),
    CSColor(".brown", .brown),
    CSColor(".teal", .teal),
    CSColor(".gray", .gray),
//    CSColor(".primary", .primary),
//    CSColor(".secondary", .secondary),
//    CSColor(".accentColor", .accentColor)
]





struct CSColorChoser: View {
    
    let text: String
    @Binding var bindedColor: Color
    
    @EnvironmentObject var csm: ColoredSquaresModel
    @EnvironmentObject var vp: ViewParameter
    
    var body: some View {
    
        VStack(alignment: .leading) {
            
            Text(text)
            
            HStack {
                
                ForEach(colors[0..<colors.count]) {
                    CSColorChoseSquare(color: $0.color,
                                      borderColor: .white,
                                      bindedColor: $bindedColor)
                                      //bindedColor: $vp.screenBackgroundColor)
                }

            }
            .padding([.top], -8)
            .padding([.leading], 15)
            
        }
    }
    
    
    // MARK: CSColorChoseSquare
    struct CSColorChoseSquare: View {
        
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
    
}


struct CSColorChoser_Previews: PreviewProvider {
    
    @State static var bindedColor: Color = .white
    
    static var previews: some View {
        CSColorChoser(text: "Test Color", bindedColor: $bindedColor)
            .environmentObject(ColoredSquaresModel())
            .environmentObject(ViewParameter())
    }
}
