//
//  ProductSectionHeaderView.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 21/05/2021.
//

import SwiftUI

struct ProductSectionHeaderView: View {

    let viewModel: ProductSectionHeaderViewViewModel

    var body: some View {
        HStack {
            Text(viewModel.title)
                .font(.system(size: 22.0, weight: .bold))
            Spacer()
            Button("Shop all") {
                print("Did tap shop all button")
            }
            .font(.system(size: 15.0))
            .foregroundColor(.purpleBlue)
        }
    }
}

struct ProductSectionHeaderView_Previews: PreviewProvider {

    static var previews: some View {
        ProductSectionHeaderView(viewModel: .init(title: "Popular"))
    }
}
