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
    
    let name: String
    let value: String
    let unit: String
    
    let valueOffset: CGFloat
    let valueColor: Color
    
    init (name: String,
          value: String,
          unit: String,
          valueOffset: CGFloat = 100,
          valueColor: Color = .white) {
        self.name = name
        self.value = value
        self.unit = unit
        self.valueOffset = valueOffset
        self.valueColor = valueColor
    }
    
    var body: some View {
        
        HStack {
            Text("\(name): ")
            //Spacer()
            HStack {
                //Spacer()
                Text(value)
                    .foregroundColor(valueColor)
                Text(unit)
                .padding(.trailing, 90)
            }
              //valueOffset)
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
                        Data(name: "size",
                             value: String(Int(csm.size_Squarebox)),
                             unit: "px",
                             valueOffset: offset,
                             valueColor: .blue)
                        Data(name: "min",
                             value: String(Int(csm.minSize_Squarebox)),
                             unit: "px",
                             valueOffset: offset,
                             valueColor: .red)
                        Data(name: "max",
                             value: String(Int(csm.maxSize_Squarebox)),
                             unit: "px",
                             valueOffset: offset,
                             valueColor: .red)
                        Data(name: "step",
                             value: "\(String(Int(csm.stepSize_Squarebox)))",
                             unit: "px",
                             valueOffset: offset,
                             valueColor: .red)

                    }
                    .padding(.leading)
                    Text("")
                }
                Group {
                    Text("Square size")
                        .bold()
                    VStack(alignment: .leading) {
                        Text("size:   \(Int(csm.size_Square)) px")
                    }
                    .padding(.leading)
                    Text("")
                }
                Group {
                    Text("Squares per edge")
                        .bold()
                    VStack(alignment: .leading) {
                    Text("min:    \(csm.minNumber_SquaresPerEdge)")
                    Text("max:    \(csm.maxNumber_SquaresPerEdge)")
                    Text("step:   \(csm.stepNumber_SquaresPerEdge)")
                    Text("number: \(Int(csm.number_SquaresPerEdge))")
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
