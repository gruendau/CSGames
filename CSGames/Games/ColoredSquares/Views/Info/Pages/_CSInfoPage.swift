//
//  _CSInfoPage.swift
//  CSGames
//
//  Created by volker on 08.07.23.
//

import SwiftUI


struct _CSInfoPage<Content: View>: View {

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
                .padding(.horizontal)
                .padding(.top, set.paddingInfoTop)

            }
            .padding(.horizontal, set.paddingInfoHorizontal)
            .foregroundColor(set.colorForeground)

        }
        
    }
}


struct _CSInfoPage_Previews: PreviewProvider {
    static var previews: some View {
        _CSInfoPage(content: Text("Hallo _CSInfoPage"))
            .environmentObject(CSSettings())
    }
}
