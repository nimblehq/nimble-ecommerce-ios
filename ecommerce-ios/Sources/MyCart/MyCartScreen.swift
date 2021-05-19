//
//  MyCartScreen.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 10/05/2021.
//

import SwiftUI

struct MyCartScreen: View {

    var body: some View {
        NavigationView {
            NoItemView(
                viewModel: .init(
                    name: "shopping cart",
                    imageString: "common-icon/icon-cart"
                )
            )
            .frame(width: screenWidth - 170.0)
            .navigationTitle("My Cart")
        }
    }
}

struct MyCartScreen_Previews: PreviewProvider {

    static var previews: some View {
        MyCartScreen()
    }
}
