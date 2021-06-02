//
//  ProductCollectionView.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 20/05/2021.
//

import SwiftUI

struct ProductCollectionView: View {

    var viewModel: ProductCollectionViewViewModel

    var goToCollection: ((String) -> Void)?
    var shouldLoadMore: (() -> Void)?

    private let numberOfColumns: Int = 2
    private let spacing: CGFloat = 17.0

    fileprivate var columns: [GridItem] {
        .init(repeating: GridItem(.flexible()), count: numberOfColumns)
    }

    var body: some View {
        LazyVStack {
            ForEach(viewModel.sectionViewModels) { section in
                VStack {
                    ProductSectionHeaderView(viewModel: .init(title: section.title)) {
                        goToCollection?(section.title)
                    }

                    LazyVGrid(columns: columns, spacing: spacing) {
                        ForEach(section.cellViewModels) { cellVM in
                            NavigationLink(destination: ProductDetailScreen()) {
                                ProductCell(viewModel: cellVM)
                            }
                            .onAppear {
                                if cellVM.isLast {
                                    shouldLoadMore?()
                                }
                            }
                        }
                    }
                    .padding(.vertical, 10.0)
                }
            }
        }
        .padding(.horizontal, 15.0)
    }
}

struct ProductCollectionView_Previews: PreviewProvider {

    static var previews: some View {
        ProductCollectionView(viewModel: .init())
            .previewLayout(.fixed(width: screenWidth, height: 261.0))
    }
}
