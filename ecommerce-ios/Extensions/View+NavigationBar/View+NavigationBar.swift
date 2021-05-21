//
//  View+NavigationBar.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 21/05/2021.
//

import SwiftUI

extension View {

    func navigationBarItems<TrailingView>(@ViewBuilder trailingView: () -> TrailingView) -> some View where TrailingView: View {
        navigationBarItems(trailing: trailingView())
    }
}
