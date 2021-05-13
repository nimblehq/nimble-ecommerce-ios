//
//  SearchItemRow.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 13/05/2021.
//

import SwiftUI

struct SearchItemRow: View {

    static let column = 2
    let viewModel: SearchItemRowViewModel

    var body: some View {
        VStack {
            HStack {
                Spacer()
                ForEach(0..<Self.column) { index in
                    if let viewModel = viewModel.viewModels[safe: index] as? SearchItemCellViewModel {
                        SearchItemCell(viewModel: viewModel)
                        Spacer()
                    }
                }
            }
        }
    }
}

struct SearchItemRow_Previews: PreviewProvider {

    static var previews: some View {
        SearchItemRow(
            viewModel: SearchItemRowViewModel(
                id: 1,
                viewModels: [
                    SearchItemCellViewModel(
                        id: 0,
                        name: "cube",
                        imageName: "icon-cube",
                        numberOfItems: 0
                    ),
                    SearchItemCellViewModel(
                        id: 1,
                        name: "sphere",
                        imageName: "icon-sphere",
                        numberOfItems: 1
                    )
                ]
            )
        ).fixedSize(horizontal: true, vertical: true)
    }
}
