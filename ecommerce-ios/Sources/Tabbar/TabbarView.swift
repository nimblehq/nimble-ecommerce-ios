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
            HomeView()
                .withTabbar($selection, tab: .home)
            SearchView()
                .withTabbar($selection, tab: .search)
            MyCartView()
                .withTabbar($selection, tab: .myCart)
            ProfileView()
                .withTabbar($selection, tab: .profile)
        }
        .accentColor(.mainBlue)
    }
}

struct TabbarView_Previews: PreviewProvider {

    static var previews: some View {
        TabbarView()
    }
}
