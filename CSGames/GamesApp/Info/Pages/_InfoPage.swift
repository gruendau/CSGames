//
//  _InfoPage.swift
//  CSGames
//
//  Created by volker on 09.07.23.
//

import SwiftUI

struct _InfoPage<Content: View>: View {

    @EnvironmentObject var set: Settings

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

struct _InfoPage_Previews: PreviewProvider {
    static var previews: some View {
        _InfoPage(content: Text("Hallo _InfoPage"))
            .environmentObject(Settings())
    }
}
