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
            switch self {
            case .home: return Image("tabbar/home-fill")
            case .search: return Image("tabbar/search-fill")
            case .myCart: return Image("tabbar/cart-fill")
            case .profile: return Image("tabbar/profile-fill")
            }
        }

        var image: Image {
            switch self {
            case .home: return Image("tabbar/home")
            case .search: return Image("tabbar/search")
            case .myCart: return Image("tabbar/cart")
            case .profile: return Image("tabbar/profile")
            }
        }

        var tag: Int { self.rawValue }
    }
}
