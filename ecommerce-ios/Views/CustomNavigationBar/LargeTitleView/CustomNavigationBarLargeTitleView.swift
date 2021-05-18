//
//  CustomNavigationBarLargeTitleView.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 17/05/2021.
//

import SwiftUI

struct CustomNavigationBarLargeTitleView<TitleView, TrailingView>: View where TitleView: View, TrailingView: View {

    let titleView: () -> TitleView
    let trailingView: () -> TrailingView

    init(
        @ViewBuilder titleView: @escaping () -> TitleView,
        @ViewBuilder trailingView: @escaping () -> TrailingView
    ) {
        self.titleView = titleView
        self.trailingView = trailingView
    }

    var body: some View {
        VStack {
            Spacer()
            HStack(alignment: .center) {
                titleView().padding()
                Spacer()
                trailingView().padding()
            }
        }
        .background(Color.white)
    }
}
