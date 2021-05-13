//
//  HomeScreen.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 10/05/2021.
//

import SwiftUI

struct HomeScreen: View {

    var body: some View {
        NavigationView {
            Text("Home")
            .navigationBarTitle("Discover")
            .navigationBarLargeTitleItems(trailing: Button(action: {
                print("did tap profile button")
            }) {
                Image("avatar-icon")
            })
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {

    static var previews: some View {
        HomeScreen()
    }
}
