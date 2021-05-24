//
//  SortCellViewModel.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 21/05/2021.
//

struct SortCellViewModel: Identifiable, Equatable {

    let id: Int
    let title: String
    let subtitle: String
}

extension SortCellViewModel {

    init(sortType: SortType) {
        id = sortType.rawValue
        title = sortType.title
        subtitle = sortType.subtitle
    }
}
