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



struct FrameworkGridView: View{
    
    @StateObject var viewModel = FrameworkGridViewModel()
    // when initiliazing a brand new view model we use a @StateObject but if we are injecting from a previous model we use observed object
    
    
    var column: [GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())]

    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: column){
                    ForEach(MockData.frameworks){framework in
                        frameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Framework" )
            .sheet(isPresented: $viewModel.isShowingDetailView){
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                            isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
}


struct frameworkTitleView: View {
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


