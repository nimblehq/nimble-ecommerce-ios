//
//  Price.swift
//  ecommerce-ios
//
//  Created by Su T. Nguyen on 14/05/2021.
//

import Foundation

struct Price: Identifiable {

    let id: String
    let amount: Double
    let currency: String

    var formattedPrice: String {
        "\(currency)\(amount.formatted(with: .currencyWithNoDecimalDigit))"
    }
}
