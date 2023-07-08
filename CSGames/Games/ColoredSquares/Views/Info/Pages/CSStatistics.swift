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
        
        _CSInfoPage(content: InfoContent())
        
    }
}




struct InfoContent: View {

    @EnvironmentObject var set: CSSettings

    var body: some View {

        Group {

            CSInfoTitle(title: "Statistics",
                        show: $set.showStatistics)

            VStack(alignment: .leading) {
                Text("Text ...")
                    .padding(.vertical, 1)

            }

            Spacer()
        }

    }
}




struct CSStatistics_Previews: PreviewProvider {
    static var previews: some View {
        CSStatistics()
            .environmentObject(CSSettings())
    }
}
