//
//  CSUserInstruction.swift
//  CSGames
//
//  Created by Test on 20.04.22.
//

import SwiftUI

struct CSUserInstructions: View {
    @EnvironmentObject var set: CSSettings
    var body: some View {
        _CSInfoPage(content: ContentUserInstructions())
    }
}

struct ContentUserInstructions: View {
    @EnvironmentObject var set: CSSettings
    var body: some View {
        
        Group {
            // Content Start ---------------
            CSInfoTitle(title: "User Instructions",
                        show: $set.showUserInstructions)
            
            VStack(alignment: .leading) {
                Text("Tap on ...")
                    .padding(.vertical, 1)
                Group {
                    Text("Title to reset data.")
                        .padding(.vertical, 1)
                    Text("Screen to render squarebox.")
                        .padding(.vertical, 1)
                    Text("Single square to render the square.")
                        .padding(.vertical, 1)
                    Text("Top buttons to change number of squares.")
                        .padding(.vertical, 1)
                    Text("Bottom buttons to change size of squarebox.")
                        .padding(.vertical, 1)
                    Text("Copyright to get info.")
                        .padding(.vertical, 1)
                }
                .padding(.leading)

            }
            
            Spacer()
            // Content End -----------------
        }
        
    }
}


struct CSUserInstructions_Previews: PreviewProvider {
    static var previews: some View {
        CSUserInstructions()
            .environmentObject(CSSettings())
    }
}
