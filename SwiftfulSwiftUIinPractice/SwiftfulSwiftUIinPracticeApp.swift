//
//  SwiftfulSwiftUIinPracticeApp.swift
//  SwiftfulSwiftUIinPractice
//
//  Created by nya on 2025/2/13.
//

import SwiftUI
import SwiftfulRouting

@main
struct SwiftfulSwiftUIinPracticeApp: App {
    var body: some Scene {
        WindowGroup {
            RouterView { _ in
                ContentView()
            }
        }
    }
}

extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }

    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}
