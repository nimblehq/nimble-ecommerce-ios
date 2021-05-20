//
//  ProductCollectionView.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 20/05/2021.
//

import SwiftUI

struct ProductCollectionView: View {

    private let viewModel = ProductCollectionViewViewModel()

    private let numberOfColumns: Int = 2
    private let spacing: CGFloat = 17.0

    private var columns: [GridItem] {
        let numberOfColumns = CGFloat(self.numberOfColumns)
        let minimunWidth = ((screenWidth - spacing * (numberOfColumns + 1)) / numberOfColumns).rounded(.down)
        return [.init(.adaptive(minimum: minimunWidth))]
    }

    var body: some View {
        let sections = viewModel.sections.filter { $0.cellViewModels.count != 0 }

        return LazyVStack {
            ForEach(sections) { section in
                VStack {
                    HStack {
                        Text(section.title)
                            .font(.system(size: 22.0, weight: .bold))
                        Spacer()
                        Button("Shop all") {
                            print("Did tap shop all button")
                        }
                        .font(.system(size: 15.0))
                        .foregroundColor(.purpleBlue)
                    }

                    LazyVGrid(columns: columns, spacing: spacing) {
                        ForEach(section.cellViewModels) { cellVM in
                            ProductCell(viewModel: cellVM)
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
        ProductCollectionView()
            .previewLayout(.fixed(width: screenWidth, height: 261.0))
    }
}
