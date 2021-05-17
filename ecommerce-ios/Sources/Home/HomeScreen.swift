//
//  HomeScreen.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 10/05/2021.
//

import SwiftUI

struct HomeScreen: View {

    private var tab: Constants.TabBar = .home

    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    SuggestedView()
                        .cornerRadius(12.0)
                        .offset(x: 0.0, y: 20.0)
                        .padding([.leading, .trailing], 10.0)
                }
            }
            .navigationBarTitle(tab.title)
            .navigationBarLargeTitle {
                CustomNavigationBarLargeTitleView(
                    titleView: {
                        Text(tab.title)
                            .font(.largeTitle.weight(.bold))
                    },
                    trailingView: {
                        Button(
                            action: { print("did tap profile button") },
                            label: { Image("avatar-icon") }
                        )
                    }
                )
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {

    static var previews: some View {
        HomeScreen()
    }
}
