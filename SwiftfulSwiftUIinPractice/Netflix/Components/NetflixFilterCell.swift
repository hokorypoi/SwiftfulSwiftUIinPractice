//
//  NetflixFilterCell.swift
//  SwiftfulSwiftUIinPractice
//
//  Created by nya on 2025/2/15.
//

import SwiftUI

struct NetflixFilterCell: View {
    
    var title: String = "Categories"
    var isDropdown: Bool = true
    var isSelected: Bool = false
    
    var body: some View {
        HStack(spacing: 4) {
            Text(title)
            
            if isDropdown {
                Image(systemName: "chevron.down")
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
        .background(
            ZStack {
                Capsule(style: .circular)
                    .fill(.netflixDarkGray)
                    .opacity(isSelected ? 1 : 0)
                Capsule(style: .circular)
                    .stroke(lineWidth: 1)
                
            }
        )
        .foregroundStyle(.netflixLightGray)
        
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        
        VStack {
            NetflixFilterCell()
            NetflixFilterCell(isDropdown: false)
            NetflixFilterCell(isSelected: true)
            
        }
    }
}
