//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Misson Paudel on 13/07/2025.
//
//
//import SwiftUI
//
//struct FrameworkGridView: View {
//    
//    let columns: [GridItem] = [GridItem(.flexible()),
//                               GridItem(.flexible()),
//                               GridItem(.flexible())]
//    var body: some View {
//        LazyVGrid(columns: columns){
//            FrameworkTitleView(name: "App Clip", imageName: "app-clip")
//            FrameworkTitleView(name: "App Clip", imageName: "app-clip")
//            FrameworkTitleView(name: "App Clip", imageName: "app-clip")
//            FrameworkTitleView(name: "App Clip", imageName: "app-clip")
//            FrameworkTitleView(name: "App Clip", imageName: "app-clip")
//        }
//    }
//}
//
#Preview {
    FrameworkGridView()
}
//
//struct FrameworkTitleView: View{
//    let name: String
//    let imageName: String
//    
//    var body: some View{
//        
//        VStack{
//            Image(imageName)
//                .resizable()
//                .frame(width: 90, height: 90)
//            Text(name)
//                .font(.title2)
//                .fontWeight(.semibold)
//                .scaledToFit()
//                .minimumScaleFactor(0.5)
//            
//        }
//    }
//}

import SwiftUI

struct FrameworkGridView: View{
    var body:some  View{
        VStack{
            Image("app-clip")
                .resizable()
                .frame(width: 90, height: 90)
            Text("App Clip")
                .font(.title2)
                .
            
        }
    }
}
