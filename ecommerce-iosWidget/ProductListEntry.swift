//
//  ProductListEntry.swift
//  ecommerce-iosWidgetExtension
//
//  Created by Bliss on 21/5/21.
//

import WidgetKit

typealias WidgetProduct = SearchResultItem

struct ProductListEntry: TimelineEntry {

    let date: Date
    let topItem: WidgetProduct
    let promotionText: String
    let products: [WidgetProduct]
}

extension WidgetProduct {

    static var placeholder: [WidgetProduct] {
        Array(WidgetProduct.searchResultItems.prefix(5))
    }
    
    static var placeholderItem: WidgetProduct {
        WidgetProduct(
            id: 1,
            name: "Gray Box",
            imageString: "screen-search-result-tshirt/tshirt-cube-gray",
            price: Price(id: "200", amount: 200, currency: "$")
        )
    }
}
