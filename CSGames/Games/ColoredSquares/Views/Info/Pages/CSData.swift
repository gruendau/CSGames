//
//  CSData.swift
//  CSGames
//
//  Created by Test on 20.04.22.
//

import SwiftUI

struct CSData: View {
    @EnvironmentObject var set: CSSettings
    var body: some View {
        _CSInfoPage(content: ContentData())
    }
}

struct ContentData: View {
    @EnvironmentObject var set: CSSettings
    var body: some View {
        
        Group {
            // Content Start ---------------
            CSInfoTitle(title: "Game Data",
                        show: $set.showData)
            
            VStack(alignment: .leading) {
                Text("Text ...")
                    .padding(.vertical, 1)

            }
            
            Spacer()
            // Content End -----------------
        }
        
    }
}


struct CSData_Previews: PreviewProvider {
    static var previews: some View {
        CSData()
            .environmentObject(CSSettings())
    }
}
