//
//  View+CustomNavigationBarLargeTitle.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 17/05/2021.
//

import SwiftUI

public extension View {

    func navigationBarLargeTitle<Content>(@ViewBuilder customView: () -> Content) -> some View where Content: View {
        overlay(NavigationBarLargeTiltleRepresenting(customView: customView()).frame(width: 100, height: 100))
    }
}

private struct NavigationBarLargeTiltleRepresenting<Content: View>: UIViewControllerRepresentable {

    typealias UIViewControllerType = Wrapper

    private let customView: Content

    init(customView: Content) {
        self.customView = customView
    }

    func makeUIViewController(context: Context) -> Wrapper {
        Wrapper(representable: self)
    }

    func updateUIViewController(_ uiViewController: Wrapper, context: Context) { }
}

extension NavigationBarLargeTiltleRepresenting {

    class Wrapper: UIViewController {

        private let representable: NavigationBarLargeTiltleRepresenting
        private var largeTitleView: UIView?

        init(representable: NavigationBarLargeTiltleRepresenting) {
            self.representable = representable
            super.init(nibName: nil, bundle: nil)
        }

        required init?(coder: NSCoder) {
            fatalError()
        }

        override func viewWillAppear(_ animated: Bool) {
            guard largeTitleView == nil else { return }
            guard
                let navigationBar = navigationController?.navigationBar,
                let LargeTitleViewClass = NSClassFromString("_UINavigationBarLargeTitleView"),
                let largeTitleView = navigationBar.subviews.first(where: { $0.isKind(of:  LargeTitleViewClass.self) })
            else { return }
            let controller = UIHostingController(rootView: representable.customView)
            controller.view.clipsToBounds = true
            controller.view.translatesAutoresizingMaskIntoConstraints = false
            navigationBar.addSubview(controller.view)
            NSLayoutConstraint.activate([
                controller.view.leadingAnchor.constraint(equalTo: largeTitleView.leadingAnchor),
                controller.view.trailingAnchor.constraint(equalTo: largeTitleView.trailingAnchor),
                controller.view.bottomAnchor.constraint(equalTo: largeTitleView.bottomAnchor),
                controller.view.heightAnchor.constraint(equalTo: largeTitleView.heightAnchor)
            ])
            self.largeTitleView = controller.view
            view.layoutSubviews()
            super.viewWillAppear(animated)
        }
    }
}

