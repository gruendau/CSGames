//
//  CSStatistics.swift
//  CSGames
//
//  Created by Test on 20.04.22.
//

import SwiftUI

struct CSStatistics: View {
    @EnvironmentObject var set: CSSettings
    var body: some View {
        _CSInfoPage(content: Content())
    }
}


private struct Content: View {
    @EnvironmentObject var set: CSSettings
    var body: some View {
        
        Group {
            // CONTENT START ---------------------
            
            CSInfoTitle(title: "Statistics",
                        show: $set.showStatistics)
            
            VStack(alignment: .leading) {
                Text("Text ...")
                    .padding(.vertical, 1)
                
            }
            
            Spacer()
            
            // CONTENT END -----------------------
        }
        
    }
}


struct CSStatistics_Previews: PreviewProvider {
    static var previews: some View {
        CSStatistics()
            .environmentObject(CSSettings())
    }
}

