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
}
