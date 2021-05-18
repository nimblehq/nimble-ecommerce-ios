//
//  ProductCellViewModel.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 17/05/2021.
//

struct ProductCellViewModel: Identifiable {

    var id: String
    var name: String
    var imageName: String
    var price: Double
    var currency: String

    var formattedPrice: String {
        "\(currency)\(price.formatted(with: .currencyWithNoDecimalDigit))"
    }
}
