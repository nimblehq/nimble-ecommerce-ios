//
//  ProductCellViewModel.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 17/05/2021.
//

struct ProductCellViewModel: Identifiable {

    var id: Int
    var name: String
    var imageString: String
    var price: Double
    var currency: String

    var formattedPrice: String {
        "\(currency)\(price.formatted(with: .currencyWithNoDecimalDigit))"
    }
}
