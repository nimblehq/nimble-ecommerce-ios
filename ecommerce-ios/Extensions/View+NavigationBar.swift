//
//  View+NavigationBar.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 13/05/2021.
//

import SwiftUI

public extension View {

    func navigationBarLargeTitleItems<T>(trailing: T) -> some View where T: View {
        overlay(NavigationBarLargeTitleItems(trailing: trailing)
                    .frame(width: 0, height: 0))
    }
}

private struct NavigationBarLargeTitleItems<T: View>: UIViewControllerRepresentable {

    typealias UIViewControllerType = Wrapper

    private let trailingItems: T

    init(trailing: T) {
        self.trailingItems = trailing
    }

    func makeUIViewController(context: Context) -> Wrapper {
        Wrapper(representable: self)
    }

    func updateUIViewController(_ uiViewController: Wrapper, context: Context) { }

    class Wrapper: UIViewController {

        private let representable: NavigationBarLargeTitleItems?

        init(representable: NavigationBarLargeTitleItems) {
            self.representable = representable
            super.init(nibName: nil, bundle: nil)
        }

        required init?(coder: NSCoder) {
            self.representable = nil
            super.init(coder: coder)
        }

        override func viewWillAppear(_ animated: Bool) {
            guard let representable = self.representable else { return }
            guard let navigationBar = self.navigationController?.navigationBar else { return }
            guard let navigationBarLargeTitleView = NSClassFromString("_UINavigationBarLargeTitleView")
            else { return }

            navigationBar.subviews.forEach { subview in
                if subview.isKind(of: navigationBarLargeTitleView.self) {
                    let controller = UIHostingController(rootView: representable.trailingItems)
                    controller.view.translatesAutoresizingMaskIntoConstraints = false
                    subview.addSubview(controller.view)

                    NSLayoutConstraint.activate([
                        controller.view.bottomAnchor.constraint(
                            equalTo: subview.bottomAnchor,
                            constant: -13.0
                        ),
                        controller.view.trailingAnchor.constraint(
                            equalTo: subview.trailingAnchor,
                            constant: -view.directionalLayoutMargins.trailing - 16.0
                        )
                    ])
                }
            }
        }
    }
}
