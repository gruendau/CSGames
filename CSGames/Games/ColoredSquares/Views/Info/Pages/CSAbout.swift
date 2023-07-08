//
//  CSAbout.swift
//  CSGames
//
//  Created by volker on 08.07.23.
//

import SwiftUI

struct CSAbout: View {
    @EnvironmentObject var set: CSSettings
    var body: some View {
        _CSInfoPage(content: ContentAbout())
    }
}

struct ContentAbout: View {
    @EnvironmentObject var set: CSSettings
    var body: some View {
        
        Group {
            // Content Start ---------------
            CSInfoTitle(title: "About",
                        show: $set.showAbout)
            
            VStack(alignment: .leading) {
                Text("Text ...")
                    .padding(.vertical, 1)

            }
            
            Spacer()
            // Content End -----------------
        }
        
    }
}


struct CSAbout_Previews: PreviewProvider {
    static var previews: some View {
        CSAbout()
            .environmentObject(CSSettings())
    }
}
