//
//  Constants.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 13/05/2021.
//

import SwiftUI

enum Constants { }

extension Constants {

    enum TabBar: Int, CaseIterable {
        case home, search, myCart, profile

        var highlightedImage: Image {
            Image("tabbar/\(name)-fill")
        }
        var image: Image {
            Image("tabbar/\(name)")
        }

        var name: String {
            switch self {
            case .home: return "home"
            case .search: return "search"
            case .myCart: return "cart"
            case .profile: return "profile"
            }
        }

        var title: String {
            switch self {
            case .home: return "Discover"
            case .search: return "Shop"
            case .myCart: return "My Cart"
            case .profile: return "My Account"
            }
        }

        var tag: Int { self.rawValue }
    }
}
