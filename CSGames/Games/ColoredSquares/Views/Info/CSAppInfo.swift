//
//  UserInfoView.swift
//  ColoredSquares
//
//  Created by Test on 13.04.22.
//

import SwiftUI

struct NavigationConfigurator: UIViewControllerRepresentable {
    var configure: (UINavigationController) -> Void = { _ in }

    func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationConfigurator>) -> UIViewController {
        UIViewController()
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationConfigurator>) {
        if let nc = uiViewController.navigationController {
            self.configure(nc)
        }
    }

}

struct ItemCell: View {
    // https://www.hackingwithswift.com/forums/swiftui/background-color-of-a-list-make-it-clear-color/3379
    
    var item: String
    
    var body: some View {
        
        Text(item)
            .foregroundColor(.white)
        
    }
}

struct CSAppInfo: View {
    
    // https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/TableView_iPhone/TableViewAPIOverview/TableViewAPIOverview.html
    
    init () {
        // Remove separator lines
        UITableView.appearance().separatorColor = .clear
        // Set background color
        UITableView.appearance().backgroundColor = .black

        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]

    }
    
    @EnvironmentObject var csm: CSViewModel
    @EnvironmentObject var set: CSSettings
    
    @State private var showSquareboxInfo = false
    
    let listRowBGColor: Color = .black
    
    var body: some View {
        
        ZStack {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            NavigationView {
                
                List {
                    
                    NavigationLink(destination: CSAppUserInstructions()) {
                        ItemCell(item: "User Instruction")
                    }
                    .listRowBackground(listRowBGColor)
                    
                    NavigationLink(destination: CSAppData()) {
                        ItemCell(item: "Data")
                    }
                    .listRowBackground(listRowBGColor)
                    
                    NavigationLink(destination: CSAppStatistics()) {
                        ItemCell(item: "Statistics")
                    }
                    .listRowBackground(listRowBGColor)
                    
                    NavigationLink(destination: CSAppCustomization()) {
                        ItemCell(item: "Custumization")
                    }
                    .listRowBackground(listRowBGColor)
                    
                }
                .navigationBarHidden(true)
                .foregroundColor(.white)
                .padding([.top], -25)
                
            }
            .navigationBarBackButtonHidden(true)
            
        }
        
    }
}


struct CSAppInfo_Previews: PreviewProvider {
    
    static var previews: some View {
        CSAppInfo()
            .background(CSSettings().colorBackground)
            .environmentObject(CSViewModel())
            .environmentObject(CSSettings())
    }
}
