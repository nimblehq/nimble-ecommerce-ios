//
//  ProductSectionViewModel.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 20/05/2021.
//

import SwiftUI

struct ProductSectionViewModel: Identifiable {

    let id: Int
    let title: String
    var cellViewModels: [ProductCellViewModel] = []
}

// MARK: - Dummy a product

extension ProductSectionViewModel {

    init(collection: Constants.Collection) {
        var cellVMs: [ProductCellViewModel] = []
        for index in 0..<collection.numberOfItems {
             let cellVM = ProductCellViewModel(
                id: index,
                name: "Pink cube",
                imageString: "screen-search-result-tshirt/tshirt-cube-pink",
                price: 10_000,
                currency: "฿"
            )
            cellVMs.append(cellVM)
        }
        self.init(id: collection.rawValue, title: collection.title, cellViewModels: cellVMs)
    }
}

extension Constants.Collection {

    fileprivate var numberOfItems: Int {
        switch self {
        case .popular: return 2
        case .newArrival: return 2
        case .forYou: return 4
        }
    }
}
