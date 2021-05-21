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
        for (index, cubeType) in CubeType.allCases.enumerated() {
            items.append(
                SearchResultItem(
                    id: index,
                    name: cubeType.name,
                    imageString: cubeType.imageName,
                    price: Price(id: "\(index)", amount: index * 1_000, currency: "฿")
                )
            )
        }
        return items
    }
}

private enum CubeType: String, CaseIterable {

    case gray, pink, indigo, honey, gray1, pink1, indigo1, honey1

    var value: String {
        switch self {
        case .gray, .gray1: return "gray"
        case .pink, .pink1: return "pink"
        case .indigo, .indigo1: return "indigo"
        case .honey, .honey1: return "honey"
        }
    }

    var name: String {
        "\(value) cube"
    }

    var imageName: String {
        "screen-search-result-tshirt/tshirt-cube-\(value)"
    }
}
