//
//  ProductCollectionViewViewModel.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 20/05/2021.
//

import Foundation

final class ProductCollectionViewViewModel {

    var sectionViewModels: [ProductSectionViewModel] = []

    init() {
        sectionViewModels = Constants.Collection.allCases.map(ProductSectionViewModel.init)
    }
}
