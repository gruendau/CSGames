//
//  GapView.swift
//  ColoredSquares
//
//  Created by Test on 12.04.22.
//

import SwiftUI


enum Orientation {
    case horizontal
    case vertical
}


struct GapView: View {
    
    var gap: CGFloat
    var orientation: Orientation
    
    init (_ gap: CGFloat = 15,
          orientation: Orientation = .vertical) {
        self.gap = gap
        self.orientation = orientation
    }
    
    var body: some View {
        
        if orientation == .vertical {
            Rectangle().frame(width: 0, height: gap, alignment: .center)
        }
        if orientation == .horizontal {
            Rectangle().frame(width: gap, height: 0, alignment: .center)
        }
            
    }
}

//struct GapView_Previews: PreviewProvider {
//    static var previews: some View {
//        GapView()
//    }
//}
