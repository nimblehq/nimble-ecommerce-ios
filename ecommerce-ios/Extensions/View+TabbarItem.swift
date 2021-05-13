//
//  View+TabbarItem.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 13/05/2021.
//

import SwiftUI

extension View {

    func withTabbar(_ select: Binding<Int>, tab: Constants.TabBar) -> some View {
        self
            .tabItem {
                select.wrappedValue == tab.tag ? tab.highlightedImage : tab.image
            }
            .tag(tab.tag)
    }
}
