//
//  SearchItemCell.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 13/05/2021.
//

import SwiftUI

struct SearchItemCell: View {

    var viewModel: SearchItemCellViewModel

    var body: some View {
        VStack(alignment: .center, spacing: 0.0) {
            Image(viewModel.imageName)
                .resizable()
                .aspectRatio(1.108, contentMode: .fill)
                .padding()
            Text(viewModel.name.capitalized)
                .font(.headline)
                .foregroundColor(.charadeGray)
            Text(viewModel.numberOfItemsString)
                .font(.footnote)
                .foregroundColor(.charadeGrayAlpha4)
        }
    }
}

struct SearchItemCell_Previews: PreviewProvider {

    static var previews: some View {
        SearchItemCell(
            viewModel: SearchItemCellViewModel(
                id: 1,
                name: "cube",
                imageName: "icon-cube",
                numberOfItems: 1
            )
        )
        .fixedSize(horizontal: true, vertical: true)
    }
}
