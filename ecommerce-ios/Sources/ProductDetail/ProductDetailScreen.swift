//
//  ProductDetailScreen.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 21/05/2021.
//

import SwiftUI

struct ProductDetailScreen: View {

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

            #warning("Implement the related products")
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

struct ProductDetailScreen_Previews: PreviewProvider {

    static var previews: some View {
        ProductDetailScreen()
    }
}
