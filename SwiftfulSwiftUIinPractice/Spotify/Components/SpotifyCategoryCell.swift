//
//  SpotifyCategoryCell.swift
//  SwiftfulSwiftUIinPractice
//
//  Created by nya on 2025/2/13.
//

import SwiftUI

struct SpotifyCategoryCell: View {
    
    var title: String = "All"
    var isSelected: Bool = false
    
    var body: some View {
        Text(title)
            .font(.callout)
            .frame(minWidth: 35)
            .padding(.vertical, 8)
            .padding(.horizontal, 8)
            .background(isSelected ? .spotifyGreen : .spotifyDarkGray)
            .foregroundStyle(isSelected ? .spotifyBlack : .spotifyWhite)
            .cornerRadius(16)
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        
        VStack(spacing: 40.0) {
            SpotifyCategoryCell(title: "Title gose here")
            SpotifyCategoryCell(title: "Title gose here", isSelected: true)
            SpotifyCategoryCell(isSelected: true)

        }
    }
}
