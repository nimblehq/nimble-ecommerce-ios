//
//  CollectionScreen.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 26/05/2021.
//

import SwiftUI

struct CollectionScreen: View {

    let viewModel: CollectionViewModel

    @State private var isFilterScreenPresenting: Bool = false

    private let numberOfColumns = 2
    private let spacing: CGFloat = 17.0

    private var columns: [GridItem] {
        .init(repeating: GridItem(.flexible()), count: numberOfColumns)
    }

    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            CustomNavigationBarLargeTitleView(
                titleView: {
                    Text(viewModel.name.capitalized)
                        .font(.largeTitle.bold())
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
                ForEach(viewModel.productCellViewModels) { viewModel in
                    NavigationLink(destination: ProductDetailScreen()) {
                        ProductCell(viewModel: viewModel)
                    }
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .accentColor(.darkBlue)
    }
}

struct CollectionScreen_Previews: PreviewProvider {

    static var previews: some View {
        CollectionScreen(viewModel: CollectionViewModel(id: "1", name: "Cube", products: Product.products))
    }
}
