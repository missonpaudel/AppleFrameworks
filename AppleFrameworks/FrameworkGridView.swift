//
//  FrameworkGridView.swift
//  AppleFrameworks
//
//  Created by Misson Paudel on 13/07/2025.
//
//
import SwiftUI
#Preview {
    FrameworkGridView()
}

var column: [GridItem] = [GridItem(.flexible()),
                          GridItem(.flexible()),
                          GridItem(.flexible())]


struct FrameworkGridView: View{
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: column){
                    ForEach(MockData.frameworks){framework in
                        appIconView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 Framework" )
        }
    }
}


struct appIconView: View {
    let framework: Framework 
   
    var body: some View{
        VStack{
             Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            
            Text(framework.name)
                .font (.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
        .padding(15)
    }
}


