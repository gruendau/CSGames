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
        
        //        ZStack {
        //
        //            RoundedRectangle(cornerRadius: 10)
        //                .fill(LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing))
        //                .clipShape(RoundedRectangle(cornerRadius: 10))
        //                .padding(.horizontal, 4)
        //                .shadow(color: Color.black, radius: 3, x: 3, y: 3)
        //
        //            HStack(alignment: .center) {
        //                Text(item)
        //            }.font(.body)
        //        }
        
        
        
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
        //UITableView.appearance().backgroundColor = .black
        //UITableViewCell.appearance().backgroundColor = .clear
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        //UITableView.appearance()
        //UITableView.appearance().separatorStyle = .none
        //UITableViewCell.appearance().backgroundColor = .red
        
        //UITableView.appearance().backgroundColor = UIColor(Color.red)
    }
    
    @EnvironmentObject var csm: ColoredSquaresModel
    @EnvironmentObject var vp: CSSettings
    
    @State private var showSquareboxInfo = false
    
    let listRowBGColor: Color = .black
    
    var body: some View {
        
        //        NavigationView {
        //            Text("My View!")
        //                .navigationBarTitleDisplayMode(.inline)
        //                .toolbar {
        //                    ToolbarItem(placement: .principal) {
        //                        HStack {
        //                            Image(systemName: "sun.min.fill")
        //                            Text("Title")
        //                                .font(.headline)
        //                                .foregroundColor(.orange)
        //                        }
        //                    }
        //                }
        //        }
        
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
                //.background(Color.purple.ignoresSafeArea())
                //.background(.red)
                
                
                .navigationBarHidden(true)
                
                //.navigationBarTitle("App Info")
                .foregroundColor(.white)
                //                .toolbar {
                //                    ToolbarItem(placement: .navigationBarLeading) {
                //                        HStack {
                //                            //Image(systemName: "sun.min.fill")
                //                            Text("App Info")
                //                                .font(.largeTitle)
                //                                .foregroundColor(.white)
                //                        }
                //                    }
                //                }
                .padding([.top], -25)
                
                
            }
            .navigationBarBackButtonHidden(true)
            //.padding(.vertical, -50)
            //.foregroundColor(.black)
            
        }
        
        
        //.foregroundColor(.blue)
        //.background(.black)
        
        //        VStack(alignment: .leading) {
        //
        //            // MARK: - User instruction
        //            VStack(alignment: .leading) {
        //                Text("User Instruction")
        //                    .font(.title3)
        //                    .bold()
        //                VStack(alignment: .leading) {
        //                    Text("Tap on screen to render squarebox.")
        //                    Text("Tap on single square to render it.")
        //                    Text("Tap on top buttons to change number of squares.")
        //                    Text("Tap on bottom buttons to change size of squarebox.")
        //                    Text("Tap on title to reset data.")
        //                    Text("Tap on copyright to get app info.")
        //                }.padding([.leading], 15)
        //            }.padding([.bottom], 15)
        //
        //            // MARK: - Square data info
        //            VStack(alignment: .leading) {
        //                Text("App customization")
        //                    .font(.title3)
        //                    .bold()
        //                VStack(alignment: .leading) {
        ////                    Text("Squarebox")
        ////                        .onTapGesture {
        ////                            //TestView()
        ////                        }
        //                    Button(action: {
        //                        self.showSquareboxInfo.toggle()
        //                    }) {
        //                        Text("Squarebox")
        //                    }.sheet(isPresented: $showSquareboxInfo) {
        //                        TestView()
        //                    }
        //                    // Screen
        //                    ColorChooser(text: "Screen background color:",
        //                                 bindedColor: $vp.screenBackgroundColor)
        //                        .padding([.top], -15)
        //                    ColorChooser(text: "Text color:",
        //                                 bindedColor: $vp.textColor  )
        //                    // Squarebox
        //                    ColorChooser(text: "Squarebox background color:",
        //                                 bindedColor: $vp.squarebox.backgroundColor)
        //                    ColorChooser(text: "Squarebox border color:",
        //                                 bindedColor: $vp.squarebox.borderColor)
        //
        //                }.padding([.leading], 15)
        //            }.padding([.bottom], 15)
        //
        //            // MARK: - App data
        //            VStack(alignment: .leading) {
        //                Text("App data")
        //                    .font(.title3)
        //                    .bold()
        //                VStack(alignment: .leading) {
        //
        //                    let squaresPerRow = Int(csm.number_SquaresPerEdge)
        //                    let numberOfSquares = squaresPerRow * squaresPerRow
        //
        //                    Text("Squares: \(numberOfSquares)  (\(squaresPerRow) x \(squaresPerRow))")
        //                    Text("Squarebox size: \(Int(csm.size_Squarebox)) px")
        //                    Text("Square size: \(Int(csm.size_Square)) px")
        //
        //                }.padding([.leading], 15)
        //            }.padding([.bottom], 15)
        //
        //            // MARK: - App statistics
        //            VStack(alignment: .leading) {
        //                Text("App statistics")
        //                    .font(.title3)
        //                    .bold()
        ////                VStack(alignment: .leading) {
        ////                    Text("Updates of squarebox: \(Int(csm.numberUpdates_Squares))")
        ////                    Text("Updates of single squares: \(Int(csm.numberUpdates_Square))")
        ////                }.padding([.leading], 15)
        //            }.padding([.bottom], 15)
        //
        //        }.foregroundColor(vp.textColor)
        
    }
}


struct CSAppInfo_Previews: PreviewProvider {
    
    static var previews: some View {
        CSAppInfo()
            .background(CSSettings().screenBackgroundColor)
            .environmentObject(ColoredSquaresModel())
            .environmentObject(CSSettings())
    }
}
