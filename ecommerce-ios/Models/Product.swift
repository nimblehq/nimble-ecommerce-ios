//
//  Product.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 14/05/2021.
//

import Foundation

struct Product: Identifiable {

    let id: String
    let name: String
    let imageName: String
    let price: Price

    var formattedPrice: String { price.formattedPrice }
}

// MARK: - Product dummy

extension Product {

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
            "dummy-tshirt/tshirt-cube-\(value)"
        }
    }

    static var suggestedProduct: Product {
        Product(
            id: "suggested_product",
            name: "Poly Cube 2021",
            imageName: "",
            price: Price(id: "price1", amount: 8_000, currency: "฿")
        )
    }

    static var products: [Product] {
        var items: [Product] = []
        for (index, item) in CubeType.allCases.enumerated() {
            items.append(
                Product(
                    id: "\(index)",
                    name: item.name,
                    imageName: item.imageName,
                    price: Price(id: "\(index)", amount: Double(index + 1) * 1_000.0, currency: "฿")
                )
            )
        }
        return items
    }
}
