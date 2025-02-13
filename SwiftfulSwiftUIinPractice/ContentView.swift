//
//  ContentView.swift
//  SwiftfulSwiftUIinPractice
//
//  Created by nya on 2025/2/13.
//

import SwiftUI
import SwiftfulUI
import SwiftfulRouting

struct ContentView: View {
    
    @State private var users: [User] = []
    @State private var products: [Product] = []
    
    var body: some View {
        ScrollView {
            VStack {
                ForEach(products) { product in
                    Text(product.title)
                        .foregroundStyle(.spotifyGreen)
                }
            }
        }
        .padding()
        .task {
            await getData()
        }
    }
    
    private func getData() async {
        do {
            users = try await DatabaseHelper().getUsers()
            products = try await DatabaseHelper().getProducts()
        } catch {
            print("Error: \(error)")
        }
    }
}

#Preview {
    ContentView()
}
