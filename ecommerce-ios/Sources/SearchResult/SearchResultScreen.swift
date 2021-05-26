//
//  SearchResultScreen.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 18/05/2021.
//

import SwiftUI

struct SearchResultScreen: View {

    let viewModel: SearchResultScreenViewModel

    @State private var isFilterScreenPresenting: Bool = false

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
        ScrollView(.vertical, showsIndicators: true) {
            CustomNavigationBarLargeTitleView(
                titleView: {
                    Text(viewModel.name.capitalized)
                        .font(.largeNavigationBarTitle)
                },
                trailingView: {
                    Button("Filter(1)") {
                        isFilterScreenPresenting = true
                    }
                    .fullScreenCover(isPresented: $isFilterScreenPresenting) {
                        NavigationView {
                            FilterScreen()
                        }
                    }
                }
            )

            LazyVGrid(columns: columns, spacing: spacing) {
                ForEach(cellVỉewModels) { viewModel in
                    NavigationLink(destination: ProductDetailScreen()) {
                        ProductCell(viewModel: viewModel)
                    }
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .accentColor(.indigoViolet)
    }
}

struct SearchResultScreen_Previews: PreviewProvider {

    static var previews: some View {
        SearchResultScreen(
            viewModel: SearchResultScreenViewModel(id: "cube", name: "cube")
        )
    }
}
