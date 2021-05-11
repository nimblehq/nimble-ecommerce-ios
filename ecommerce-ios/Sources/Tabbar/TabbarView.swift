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
                .tabItem {
                    if selection == 0 {
                        Image("tabbar/home-fill")
                    } else {
                        Image("tabbar/home")
                    }
                }
                .tag(0)
            SearchView()
                .tabItem {
                    if selection == 1 {
                        Image("tabbar/search-fill")
                    } else {
                        Image("tabbar/search")
                    }
                }
                .tag(1)
            MyCartView()
                .tabItem {
                    if selection == 2 {
                        Image("tabbar/cart-fill")
                    } else {
                        Image("tabbar/cart")
                    }
                }
                .tag(2)
            ProfileView()
                .tabItem {
                    if selection == 3 {
                        Image("tabbar/profile-fill")
                    } else {
                        Image("tabbar/profile")
                    }
                }
                .tag(3)
        }
        .accentColor(.mainBlue)
    }
}

struct TabbarView_Previews: PreviewProvider {

    static var previews: some View {
        TabbarView()
    }
}
