//
//  ColorCellViewModel.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 19/05/2021.
//

struct ColorCellViewModel: Identifiable, Equatable {

    let id: String
    let name: String
    let colorCode: String
}

extension ColorCellViewModel {

    init(colorOption: ProductColorType) {
        id = colorOption.rawValue
        name = colorOption.name
        colorCode = colorOption.code
    }
}
