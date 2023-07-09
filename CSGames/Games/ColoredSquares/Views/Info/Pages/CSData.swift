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
            
            let offset = CGFloat(150)
            
            CSInfoTitle(title: "Data",
                        show: $set.showData)
            
            VStack(alignment: .leading) {
                Group {
                    Text("Actual Values")
                        .foregroundColor(.blue)
                        .bold()
                    
                    Text("")
                    
                    VStack(alignment: .leading) {
                        Text("Squares")
                            .foregroundColor(.blue)
                        
                        VStack(alignment: .leading) {
                            
                            CSDataText(key: "total",
                                       value: String(Int(csm.number_SquaresPerEdge * csm.number_SquaresPerEdge)),
                                       unit: "",
                                       widthKeyValue: offset,
                                       colorValue: .blue)
                            
                            CSDataText(key: "per edge",
                                       value: String(Int(csm.number_SquaresPerEdge)),
                                       unit: "",
                                       widthKeyValue: offset,
                                       colorValue: .blue)
                            
                            CSDataText(key: "size",
                                       value: String(Int(csm.size_Square)),
                                       unit: "px",
                                       widthKeyValue: offset,
                                       colorValue: .blue)
                            
                        }
                        .padding(.leading)
                        
                        Text("")
                        
                        Text("Squarebox")
                            .foregroundColor(.blue)
                        
                        VStack(alignment: .leading) {
                            
                            CSDataText(key: "size",
                                       value: String(Int(csm.size_Squarebox)),
                                       unit: "px",
                                       widthKeyValue: offset,
                                       colorValue: .blue)
                            
                        }
                        .padding(.leading)
                        
                    }
                    .padding(.leading)
                    
                }
                
                Text("")
                
                Group {
                    Text("Setpoints")
                        .foregroundColor(.blue)
                        .bold()
                    
                    Text("")
                    
                    VStack(alignment: .leading) {
                        Text("Squarebox")
                            .foregroundColor(.blue)
                        
                        VStack(alignment: .leading) {
                            
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
                        
                        Text("Squares per Edge")
                            .foregroundColor(.blue)
                        
                        VStack(alignment: .leading) {
                            
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
                        
                    }
                    .padding(.leading)
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
