//
//  SearchItemCellViewModel.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 13/05/2021.
//

struct SearchItemCellViewModel: Identifiable {

    let id: Int
    let name: String
    let imageName: String
    let numberOfItems: Int

    var numberOfItemsString: String {
        "\(numberOfItems) \(numberOfItems == 1 ? "item" : "items")"
    }
}
