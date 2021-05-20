//
//  NoItemViewModel.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 19/05/2021.
//

struct NoItemViewModel {

    let name: String
    let imageString: String

    var description: String {
        "There are no items on your \(name)."
    }
}
