//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Misson Paudel on 15/07/2025.
//

import Foundation
import SwiftUI

class FrameworkGridViewModel: ObservableObject {
    // observableObject allows us to publish information so we setup proper views listening to the changes
    
    var selectedFramework: Framework?{
        didSet {
            isShowingDetailView = true
        }
    }
    
    
    
    @Published var isShowingDetailView = false
}
