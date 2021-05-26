//
//  HomeViewModel.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 26/05/2021.
//

import Foundation

struct HomeViewModel {

    var suggestedProduct: Product { Product.suggestedProduct }

    var collectionViewModel: CollectionViewModel {
        .init(id: "1", name: suggestedProduct.name, products: Product.products)
    }

    func collectionViewModel(for categoryName: String) -> CollectionViewModel {
        .init(id: "1", name: categoryName, products: Product.products)
    }
}
