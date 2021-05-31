//
//  ProductDetailScreen.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 21/05/2021.
//

import SwiftUI

struct ProductDetailScreen: View {

    let relatedProductsVM = CollectionViewModel(id: "1", name: "Related", products: Product.products)
    @State private var gotoCollection: Bool = false

    var body: some View {
        ScrollView {
            Section {
                ProductInformationView(viewModel: .productInformation)
            }

            Section(header: titleText("Color")) {
                ColorSelectionView(cellViewModels: ProductColorType.allCases.map(ColorCellViewModel.init))
            }

            Section(header: titleText("Size")) {
                SizeSelectionView(cellViewModels: ProductSizeType.allCases.map(SizeCellViewModel.init))
            }

            Section(header: titleText("")) {
                relatedProducts()
            }

            Spacer(minLength: 20.0)
        }
    }

    private func titleText(_ title: String) -> some View {
        VStack(spacing: 0.0) {
            Color.altoGray
                .frame(height: 1.0)
                .padding(.horizontal, 20.0)
                .padding(.top, 30.0)
                .padding(.bottom, 20.0)
            if !title.isEmpty {
                HStack {
                    Text(title.capitalized)
                        .font(.headlineTitle)
                        .foregroundColor(.charadeGray)
                        .padding(.horizontal, 16.0)
                    Spacer()
                }
                .padding(.bottom, 8.0)
            }
        }
    }

    private func relatedProducts() -> some View {
        VStack {
            NavigationLink(
                destination: CollectionScreen(viewModel: relatedProductsVM),
                isActive: $gotoCollection
            ) {
                EmptyView()
            }

            ProductSectionHeaderView(viewModel: .init(title: relatedProductsVM.name)) {
                gotoCollection = true
            }

            let columns: [GridItem] = .init(repeating: GridItem(.flexible()), count: 2)

            LazyVGrid(columns: columns, spacing: 17.0) {
                ForEach(relatedProductsVM.productCellViewModels) { cellVM in
                    NavigationLink(destination: ProductDetailScreen()) {
                        ProductCell(viewModel: cellVM)
                    }
                }
            }
            .padding(.vertical, 10.0)
        }
        .padding(.horizontal, 16.0)
    }
}

struct ProductDetailScreen_Previews: PreviewProvider {

    static var previews: some View {
        ProductDetailScreen()
    }
}
