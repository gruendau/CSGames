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
        
        CSInfoPage_Body(content: InfoContent())
        
    }
}

struct CSInfoPage_Body<Content: View>: View {

    @EnvironmentObject var set: CSSettings

    let content: Content

    var body: some View {

        Group {

            ZStack(alignment: .leading) {

                // 1.Layer
                // Background color
                Color.black

                // 2. Layer
                // Content
                VStack(alignment: .leading) {

                    content

                }
                .padding(.leading, set.paddingInfoLeading)
                .padding(.top, set.paddingInfoTop)

            }
            .padding(.horizontal, set.paddingInfoHorizontal)
            .foregroundColor(set.colorForeground)

        }
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
