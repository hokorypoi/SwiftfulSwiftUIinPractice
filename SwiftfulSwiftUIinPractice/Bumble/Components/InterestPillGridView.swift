//
//  InterestPillGridView.swift
//  SwiftfulSwiftUIinPractice
//
//  Created by nya on 2025/2/15.
//

import SwiftUI
import SwiftfulUI

struct UserInterest: Identifiable {
    let id = UUID().uuidString
    var iconName: String? = nil
    var emoji: String? = nil
    var text: String
}

struct InterestPillGridView: View {
    
    var interests: [UserInterest] = User.mock.basics
    
    var body: some View {
        ZStack {
            NonLazyVGrid(columns: 2, alignment: .leading, spacing: 8, items: interests) { interest in
                if let interest {
                    InterestPillView(
                        iconName: interest.iconName,
                        emoji: interest.emoji,
                        text: interest.text
                    )
                } else {
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    VStack(spacing: 40.0) {
        InterestPillGridView(interests: User.mock.interests)
        InterestPillGridView(interests: User.mock.basics)
    }
}
