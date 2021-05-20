//
//  ProductCollectionViewViewModel.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 20/05/2021.
//

import Foundation

struct ProductCollectionViewViewModel {

    let sections: [ProductSection]
}

extension ProductCollectionViewViewModel {

    init() {
        sections = Constants.Collection.allCases.map(ProductSection.init)
    }
}
