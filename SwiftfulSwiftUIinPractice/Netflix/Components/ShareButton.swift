//
//  ShareButton.swift
//  SwiftfulSwiftUIinPractice
//
//  Created by nya on 2025/2/16.
//

import SwiftUI

struct ShareButton: View {
    
    var url: String = "https://www.swiftful-thinking.com"
    
    var body: some View {
        if let url = URL(string: url) {
            ShareLink(
                item: url) {
                    VStack(spacing: 8.0) {
                        Image(systemName: "paperplane")
                            .font(.title)
                        
                        Text("Share")
                            .font(.caption)
                            .foregroundStyle(.netflixLightGray)
                    }
                    .foregroundStyle(.netflixWhite)
                    .padding(8)
                    .background(Color.black.opacity(0.001))
                }
        }
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        
        ShareButton()
    }
}
