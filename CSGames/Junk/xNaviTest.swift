//
//  NaviTest.swift
//  CSGames
//
//  Created by Test on 25.04.22.
//

import SwiftUI

//struct SomeView1: View {
//    var body: some View {
//        NavigationView {
//            VStack {
//                //...view's content
//
//                NavigationLink(destination: SomeView2()) {
//                    Text("go to SomeView2")
//                }
//                Spacer()
//            }
//        }
//    }
//}
//
//struct SomeView2: View {
//    var body: some View {
//        NavigationView {
//            VStack {
//                //...view's content
//
//                NavigationLink(destination: SomeView1()) {
//                    Text("go to SomeView1")
//                }
//                Spacer()
//            }
//        }
//        //.navigationBarBackButtonHidden(true)
//    }
//}
//
//struct SomeView1_Previews: PreviewProvider {
//    static var previews: some View {
//        SomeView1()
//    }
//}


struct xSomeView1InsideNavigationView: View {
    // This should be the first view you present
    var body: some View {
        NavigationView { // Use NavigationView only once
            SomeView1()
            SomeView1()
        }
    }
}

struct SomeView1: View {
    var body: some View {
        VStack {
            // Do *not* use NavigationView here
            //...view's content

            NavigationLink(destination: SomeView2()) {
                Text("go to SomeView2")
            }
            Spacer()
        }
    }
}

struct SomeView2: View {
    var body: some View {
        VStack {
            // Do *not* use NavigationView here
            //...view's content

            NavigationLink(destination: SomeView1()) {
                Text("go to SomeView1")
            }
            Spacer()
        }
    }
}

struct SomeView1InsideNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        xSomeView1InsideNavigationView()
    }
}


//struct NavigationBackButton: View {
//  var title: Text?
//  @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
//
//  var body: some View {
//    ZStack {
//      VStack {
//        ZStack {
//          HStack {
//            Button(action: {
//              self.presentationMode.wrappedValue.dismiss()
//            }) {
//              Image(systemName: "chevron.left")
//                .font(.title)
//                .frame(width: 44, height: 44)
//              title
//            }
//            Spacer()
//          }
//        }
//        Spacer()
//      }
//    }
//    .zIndex(1)
//    .navigationBarTitle("")
//    .navigationBarHidden(true)
//  }
//}
//
//struct NavigationBackButton_Previews: PreviewProvider {
//  static var previews: some View {
//    NavigationBackButton()
//  }
//}



//struct NaviTest: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct NaviTest_Previews: PreviewProvider {
//    static var previews: some View {
//        NaviTest()
//    }
//}
