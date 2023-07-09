//
//  CSData.swift
//  CSGames
//
//  Created by Test on 20.04.22.
//

import SwiftUI

struct CSData: View {
    @EnvironmentObject var csm: CSViewModel
    @EnvironmentObject var set: CSSettings
    var body: some View {
        _CSInfoPage(content: Content())
    }
}

private struct Content: View {
    @EnvironmentObject var csm: CSViewModel
    @EnvironmentObject var set: CSSettings
    var body: some View {
        
        Group {
            // CONTENT START ---------------------
            
            let offset = CGFloat(100)
            
            CSInfoTitle(title: "Game Data",
                        show: $set.showData)
            
            VStack(alignment: .leading) {
                Group {
                    Text("Squarebox size")
                        .foregroundColor(.blue)
                        .bold()
                    VStack(alignment: .leading) {
                        CSDataText(key: "size",
                                   value: String(Int(csm.size_Squarebox)),
                                   unit: "px",
                                   widthKeyValue: offset,
                                   colorValue: .blue)
                        CSDataText(key: "min",
                                   value: String(Int(csm.minSize_Squarebox)),
                                   unit: "px",
                                   widthKeyValue: offset,
                                   colorValue: .blue)
                        CSDataText(key: "max",
                                   value: String(Int(csm.maxSize_Squarebox)),
                                   unit: "px",
                                   widthKeyValue: offset,
                                   colorValue: .blue)
                        CSDataText(key: "step",
                                   value: "\(String(Int(csm.stepSize_Squarebox)))",
                                   unit: "px",
                                   widthKeyValue: offset,
                                   colorValue: .blue)
                        
                    }
                    .padding(.leading)
                    Text("")
                }
                Group {
                    Text("Square size")
                        .foregroundColor(.blue)
                        .bold()
                    VStack(alignment: .leading) {
                        CSDataText(key: "size",
                             value: String(Int(csm.size_Square)),
                             unit: "px",
                             widthKeyValue: offset,
                             colorValue: .blue)
                    }
                    .padding(.leading)
                    Text("")
                }
                Group {
                    Text("Squares per edge")
                        .foregroundColor(.blue)
                        .bold()
                    VStack(alignment: .leading) {
                        CSDataText(key: "number",
                             value: String(Int(csm.number_SquaresPerEdge)),
                             unit: "",
                             widthKeyValue: offset,
                             colorValue: .blue)
                        CSDataText(key: "min",
                             value: String(Int(csm.minNumber_SquaresPerEdge)),
                             unit: "",
                             widthKeyValue: offset,
                             colorValue: .blue)
                        CSDataText(key: "max",
                             value: String(Int(csm.maxNumber_SquaresPerEdge)),
                             unit: "",
                             widthKeyValue: offset,
                             colorValue: .blue)
                        CSDataText(key: "step",
                             value: String(Int(csm.stepNumber_SquaresPerEdge)),
                             unit: "",
                             widthKeyValue: offset,
                             colorValue: .blue)
                        
                    }
                    .padding(.leading)
                    Text("")
                }
                Group {
                    
                }
                
            }
            
            Spacer()
            
            // CONTENT END -----------------------
        }
        
    }
}


struct CSData_Previews: PreviewProvider {
    static var previews: some View {
        CSData()
            .environmentObject(CSSettings())
            .environmentObject(CSViewModel())
    }
}
