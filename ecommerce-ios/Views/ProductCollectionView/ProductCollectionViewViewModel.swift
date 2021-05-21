//
//  ProductCollectionViewViewModel.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 20/05/2021.
//

import Foundation

struct ProductCollectionViewViewModel {

    let sectionViewModels: [ProductSectionViewModel]
}

extension ProductCollectionViewViewModel {

    init() {
        sectionViewModels = Constants.Collection.allCases.map(ProductSectionViewModel.init)
    }
}
