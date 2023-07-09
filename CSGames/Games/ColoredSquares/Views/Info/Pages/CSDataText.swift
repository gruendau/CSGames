//
//  CDDataText.swift
//  CSGames
//
//  Created by volker on 09.07.23.
//

import SwiftUI

struct CSDataText: View {
    
    // Values
    let key: String
    let value: String
    let unit: String
    
    // Colors
    let colorKey: Color
    let colorValue: Color
    let colorUnit: Color
    
    let widthKeyValue: CGFloat
    
    init (key: String,
          value: String,
          unit: String,
          widthKeyValue: CGFloat = 150,
          colorKey: Color = .white,
          colorValue: Color = .white,
          colorUnit: Color = .white) {
        self.key = key
        self.value = value
        self.unit = unit
        self.widthKeyValue = widthKeyValue
        self.colorKey = colorKey
        self.colorValue = colorValue
        self.colorUnit = colorUnit
    }
    
    var body: some View {
        HStack {
            HStack {
                // Key
                Text("\(key): ")
                Spacer()
                // Value
                Text(value)
                    .foregroundColor(colorValue)
            }
            .frame(width: 110)
            // Unit
            Text(unit)
            Spacer()
        }
    }
}

struct CSDataText_Previews: PreviewProvider {
    static var previews: some View {
        CSDataText(key: "Länge",
                   value: "1200",
                   unit: "mm",
                   widthKeyValue: 200,
                   colorValue: .red)
    }
}
