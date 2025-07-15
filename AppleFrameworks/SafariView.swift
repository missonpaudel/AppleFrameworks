//
//  SafariView.swift
//  AppleFrameworks
//
//  Created by Misson Paudel on 15/07/2025.
//

import Foundation
import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    let url : URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) ->  SFSafariViewController {
        SFSafariViewController(url: url)
    }
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
}
