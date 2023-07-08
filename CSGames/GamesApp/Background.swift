//
//  Background.swift
//  CSGames
//
//  Created by volker on 08.07.23.
//

import SwiftUI

struct Background: View {
    var body: some View {
        
        Color.colorBackground
            .edgesIgnoringSafeArea(.all)
        
    }
}

struct Background_Previews: PreviewProvider {
    static var previews: some View {
        Background()
    }
}
