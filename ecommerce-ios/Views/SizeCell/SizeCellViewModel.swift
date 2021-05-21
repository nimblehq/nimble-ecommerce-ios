//
//  SizeCellViewModel.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 19/05/2021.
//

struct SizeCellViewModel: Identifiable, Hashable {

    let id: String
    let name: String
}

extension SizeCellViewModel {

    init(productSizeType: ProductSizeType) {
        id = productSizeType.rawValue
        name = productSizeType.rawValue
    }
}
