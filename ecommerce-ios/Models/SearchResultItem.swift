//
//  SearchResultItem.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 18/05/2021.
//

struct SearchResultItem: Identifiable {

    var id: Int
    var name: String
    var imageString: String
    var price: Price
}

extension SearchResultItem {

    static var searchResultItems: [SearchResultItem] {
        var items: [SearchResultItem] = []
        for (index, item) in Product.products.enumerated() {
            items.append(
                SearchResultItem(
                    id: index,
                    name: item.name,
                    imageString: item.imageName,
                    price: item.price
                )
            )
        }
        return items
    }
}
