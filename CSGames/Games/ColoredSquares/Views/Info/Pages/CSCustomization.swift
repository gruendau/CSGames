//
//  CSCustomization.swift
//  CSGames
//
//  Created by Test on 20.04.22.
//

import SwiftUI

struct CSCustomization: View {
    @EnvironmentObject var set: CSSettings
    var body: some View {
        _CSInfoPage(content: ContentCustomization())
    }
}

struct ContentCustomization: View {
    @EnvironmentObject var set: CSSettings
    var body: some View {
        
        Group {
            // Content Start ---------------
            CSInfoTitle(title: "Customization",
                        show: $set.showCustomization)
            
            VStack(alignment: .leading) {
                Text("Text ...")
                    .padding(.vertical, 1)

            }
            
            Spacer()
            // Content End -----------------
        }
        
    }
}


struct CSCustomization_Previews: PreviewProvider {
    static var previews: some View {
        CSCustomization()
            .environmentObject(CSSettings())
    }
}
