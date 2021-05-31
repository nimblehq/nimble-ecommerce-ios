//
//  ProductCellViewModel.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 17/05/2021.
//

struct ProductCellViewModel: Identifiable {

    let id: String
    let name: String
    let imageString: String
    let price: Double
    let currency: String

    var formattedPrice: String {
        "\(currency)\(price.formatted(with: .currencyWithNoDecimalDigit))"
    }
}

extension ProductCellViewModel {

    init(id: String, product: Product) {
        self.init(
            id: id,
            name: product.name,
            imageString: product.imageName,
            price: product.price.amount,
            currency: product.price.currency
        )
    }
}
