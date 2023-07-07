//
//  ScreenView_AppInfo.swift
//  ColoredSquares
//
//  Created by Test on 13.04.22.
//

import SwiftUI

struct CSInfo: View {

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

    //let listRowBGColor: Color = .black

    var body: some View {

        ZStack {
            
            // 1. Layer
            // Content list
            List {
                
                CSInfoSelector(name: "User Instructions",
                               show: $set.showUserInstructions)
                
                CSInfoSelector(name: "Data",
                               show: $set.showData)
                
                CSInfoSelector(name: "Statistics",
                               show: $set.showStatistics)
                
                CSInfoSelector(name: "Customization",
                               show: $set.showCustomization)
                
                CSInfoSelector(name: "About",
                               show: $set.showAbout)


            }
            .padding(.leading, 10)
            .padding(.top, -20)
            
            // 2. Layer
            //
            if set.showUserInstructions {
                CSUserInstructions()
            }
            if set.showData {
                CSData()
            }
            if set.showStatistics {
                CSStatistics()
            }
            if set.showCustomization {
                CSCustomization()
            }
            if set.showAbout {
                //CSAppAbout()
            }
            
        }




//            NavigationView {
//
//                List {
//
//                    NavigationLink(destination: CSAppUserInstructions()) {
//                        ItemCell(item: "User Instructions")
//                    }
//                    .listRowBackground(listRowBGColor)
//
//                    NavigationLink(destination: CSAppData()) {
//                        ItemCell(item: "Data")
//                    }
//                    .listRowBackground(listRowBGColor)
//
//                    NavigationLink(destination: CSAppStatistics()) {
//                        ItemCell(item: "Statistics")
//                    }
//                    .listRowBackground(listRowBGColor)
//
//                    NavigationLink(destination: CSAppCustomization()) {
//                        ItemCell(item: "Custumization")
//                    }
//                    .listRowBackground(listRowBGColor)
//
//                }
//                .navigationBarHidden(true)
//                .foregroundColor(set.colorForeground)
//                .padding(.top, -25)
//
//            }
//            .navigationBarBackButtonHidden(true)
//
//            Spacer()
//
//        }

    }
}


struct CSInfo_Previews: PreviewProvider {
    static var previews: some View {
        CSInfo()
            .environmentObject(CSViewModel())
            .environmentObject(CSSettings())
    }
}


//struct NavigationConfigurator: UIViewControllerRepresentable {
//    var configure: (UINavigationController) -> Void = { _ in }
//
//    func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationConfigurator>) -> UIViewController {
//        UIViewController()
//    }
//    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationConfigurator>) {
//        if let nc = uiViewController.navigationController {
//            self.configure(nc)
//        }
//    }
//
//}

//struct ItemCell: View {
//    // https://www.hackingwithswift.com/forums/swiftui/background-color-of-a-list-make-it-clear-color/3379
//
//    var item: String
//
//    var body: some View {
//
//        Text(item)
//            .foregroundColor(.white)
//
//    }
//}



//struct CSInfo: View {
//
//    // https://developer.apple.com/library/archive/documentation/UserExperience/Conceptual/TableView_iPhone/TableViewAPIOverview/TableViewAPIOverview.html
//
//    init () {
//        // Remove separator lines
//        UITableView.appearance().separatorColor = .clear
//        // Set background color
//        UITableView.appearance().backgroundColor = .black
//
//        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
//
//    }
//
//    @EnvironmentObject var csm: CSViewModel
//    @EnvironmentObject var set: CSSettings
//
//    @State private var showSquareboxInfo = false
//
//    let listRowBGColor: Color = .black
//
//    var body: some View {
//
//        NavigationView {
//
//            List {
//
//                NavigationLink(destination: CSAppUserInstructions()) {
//                    ItemCell(item: "User Instructions")
//                }
//                .listRowBackground(listRowBGColor)
//
//                NavigationLink(destination: CSAppData()) {
//                    ItemCell(item: "Data")
//                }
//                .listRowBackground(listRowBGColor)
//
//                NavigationLink(destination: CSAppStatistics()) {
//                    ItemCell(item: "Statistics")
//                }
//                .listRowBackground(listRowBGColor)
//
//                NavigationLink(destination: CSAppCustomization()) {
//                    ItemCell(item: "Custumization")
//                }
//                .listRowBackground(listRowBGColor)
//
//            }
//            .navigationBarHidden(true)
//            .foregroundColor(set.colorForeground)
//            .padding(.top, -25)
//
//        }
//        .navigationBarBackButtonHidden(true)
//
//        Spacer()
//
//    }
//
//}

