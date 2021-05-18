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
}

extension SearchResultItem {

    static var searchResultItems: [SearchResultItem] {
        var items: [SearchResultItem] = []
        for (index, cubeType) in CubeType.allCases.enumerated() {
            items.append(
                SearchResultItem(
                    id: index,
                    name: cubeType.rawValue,
                    imageString: cubeType.imageName
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
        "tshirt-cube-\(value)"
    }
}

