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

struct Data: View {
    @EnvironmentObject var csm: CSViewModel
    @EnvironmentObject var set: CSSettings
    
    let key: String
    let value: String
    let unit: String
    
    let frame: CGFloat
    let valueColor: Color
    
    init (key: String,
          value: String,
          unit: String,
          frame: CGFloat = 150,
          valueColor: Color = .white) {
        self.key = key
        self.value = value
        self.unit = unit
        self.frame = frame
        self.valueColor = valueColor
    }
    
    var body: some View {
        HStack {
            HStack {
                // Key
                Text("\(key): ")
                Spacer()
                // Value
                Text(value)
                    .foregroundColor(valueColor)
            }
            .frame(width: 110)
            // Unit
            Text(unit)
            Spacer()
        }
    }
}




private struct Content: View {
    @EnvironmentObject var csm: CSViewModel
    @EnvironmentObject var set: CSSettings
    var body: some View {
        
        Group {
            // CONTENT START ---------------------
            
            let offset = CGFloat(0)
            
            CSInfoTitle(title: "Game Data",
                        show: $set.showData)
            
            VStack(alignment: .leading) {
                Group {
                    Text("Squarebox size")
                        .bold()
                    VStack(alignment: .leading) {
                        Data(key: "size",
                             value: String(Int(csm.size_Squarebox)),
                             unit: "px",
                             frame: offset,
                             valueColor: .yellow)
                        Data(key: "min",
                             value: String(Int(csm.minSize_Squarebox)),
                             unit: "px",
                             frame: offset,
                             valueColor: .blue)
                        Data(key: "max",
                             value: String(Int(csm.maxSize_Squarebox)),
                             unit: "px",
                             frame: offset,
                             valueColor: .blue)
                        Data(key: "step",
                             value: "\(String(Int(csm.stepSize_Squarebox)))",
                             unit: "px",
                             frame: offset,
                             valueColor: .blue)
                        
                    }
                    .padding(.leading)
                    Text("")
                }
                Group {
                    Text("Square size")
                        .bold()
                    VStack(alignment: .leading) {
                        Data(key: "size",
                             value: String(Int(csm.size_Square)),
                             unit: "px",
                             frame: offset,
                             valueColor: .yellow)
                    }
                    .padding(.leading)
                    Text("")
                }
                Group {
                    Text("Squares per edge")
                        .bold()
                    VStack(alignment: .leading) {
                        Data(key: "number",
                             value: String(Int(csm.number_SquaresPerEdge)),
                             unit: "",
                             frame: offset,
                             valueColor: .yellow)
                        Data(key: "min",
                             value: String(Int(csm.minNumber_SquaresPerEdge)),
                             unit: "",
                             frame: offset,
                             valueColor: .blue)
                        Data(key: "max",
                             value: String(Int(csm.maxNumber_SquaresPerEdge)),
                             unit: "",
                             frame: offset,
                             valueColor: .blue)
                        Data(key: "step",
                             value: String(Int(csm.stepNumber_SquaresPerEdge)),
                             unit: "",
                             frame: offset,
                             valueColor: .blue)
                        
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
