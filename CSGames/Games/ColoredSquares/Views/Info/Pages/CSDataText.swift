//
//  CDDataText.swift
//  CSGames
//
//  Created by volker on 09.07.23.
//

import SwiftUI



/// A view that displays a key/value pair with optional unit.
/// - Parameters
///   key
///   value
///   unit
///
struct CSDataText: View {
    
    // Values
    /// Name of the key.
    let key: String
    /// Value of the value.
    let value: String
    /// Unit of the value.
    let unit: String
    
    // Width
    /// Width of key plus value.
    ///
    /// widthKeyValue  =  width of key  +  width of spacer  +  width of value.
    let widthKeyValue: CGFloat
    
    // Colors
    /// Foreground color of the key.
    let colorKey: Color
    /// Foreground color of the value.
    let colorValue: Color
    /// Foreground color of the unit.
    let colorUnit: Color
    
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
                    .foregroundColor(colorKey)
                    .lineLimit(1)
                
                Spacer()
                
                // Value
                Text(value)
                    .foregroundColor(colorValue)
                    //.bold()
            }
            .frame(width: widthKeyValue)
            
            // Unit
            Text(unit)
                .foregroundColor(colorUnit)
            
            Spacer()
        }
    }
}

struct CSDataText_Previews: PreviewProvider {
    static var previews: some View {
        CSDataText(key: "Länge der Schraube",
                   value: "1200",
                   unit: "mm",
                   widthKeyValue: 200,
                   colorKey: .green,
                   colorValue: .red,
                   colorUnit: .blue)
    }
}

