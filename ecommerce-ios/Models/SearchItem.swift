//
//  SearchItem.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 12/05/2021.
//

struct SearchItem: Identifiable {

    var id: Int
    var name: String
    var imageString: String
    let numberOfItems: Int
}

extension SearchItem {

    static var searchItems: [SearchItem] {
        var items: [SearchItem] = []
        for (index, itemType) in ItemType.allCases.enumerated() {
            items.append(
                SearchItem(
                    id: index,
                    name: itemType.rawValue,
                    imageString: itemType.imageName,
                    numberOfItems: index
                )
            )
        }
        return items
    }
}

private enum ItemType: String, CaseIterable {

    case cube, sphere, shuzam, ico, taurus, cone

    var imageName: String {
        "icon-\(rawValue)"
    }
}
