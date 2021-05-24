//
//  TabbarView.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 10/05/2021.
//

import SwiftUI

struct TabbarView: View {

    @State private var selection = 0

    var body: some View {
        TabView(selection: $selection) {
            HomeScreen()
                .withTabbar($selection, tab: .home)
            SearchScreen()
                .withTabbar($selection, tab: .search)
            MyCartScreen()
                .withTabbar($selection, tab: .myCart)
            ProfileScreen()
                .withTabbar($selection, tab: .profile)
        }
        .accentColor(.indigoViolet)
        .onOpenURL { _ in
            selection = 1
        }
    }
}

struct TabbarView_Previews: PreviewProvider {

    static var previews: some View {
        TabbarView()
    }
}
