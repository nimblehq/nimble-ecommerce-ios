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

    var widgetURL: URL {
        let urlString = "\(id)".addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? ""
        return URL(string: "ecommerce-swiftui://\(urlString)") ?? URL(fileURLWithPath: "")
    }

    static var placeholder: [WidgetProduct] {
        WidgetProduct.searchResultItems
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
