//
//  SearchResultScreen.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 18/05/2021.
//

import SwiftUI

struct SearchResultScreen: View {

    let viewModel: SearchResultScreenViewModel

    private let numberOfColumns = 2
    private let spacing: CGFloat = 17.0
    private let cellVỉewModels: [ProductCellViewModel] = {
        #warning("implement mock view model for product")
        var vms: [ProductCellViewModel] = []
        for item in SearchResultItem.searchResultItems {
            vms.append(
                ProductCellViewModel(
                    id: item.id,
                    name: item.name,
                    imageString: item.imageString,
                    price: 1_000,
                    currency: "B"
                )
            )
        }
        return vms
    }()

    private var columns: [GridItem] {
        let numberOfColumns = CGFloat(self.numberOfColumns)
        let minimunWidth = ((screenWidth - spacing * (numberOfColumns + 1)) / numberOfColumns).rounded(.down)
        return [.init(.adaptive(minimum: minimunWidth))]
    }

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                LazyVGrid(columns: columns, spacing: spacing) {
                    ForEach(cellVỉewModels) { viewModel in
                        ProductCell(viewModel: viewModel)
                    }
                }
                .padding(.horizontal)
            }
            .navigationTitle(viewModel.name.capitalized)
            .navigationBarLargeTitle {
                CustomNavigationBarLargeTitleView(
                    titleView: {
                        Text(viewModel.name.capitalized)
                            .font(.largeTitle.bold())
                    },
                    trailingView: {
                        Button("Filter(1)") {
                            print("did tap filter button")
                        }
                    }
                )
            }
        }
    }
}

struct SearchResultScreen_Previews: PreviewProvider {

    static var previews: some View {
        SearchResultScreen(
            viewModel: SearchResultScreenViewModel(id: "cube", name: "cube")
        )
    }
}
