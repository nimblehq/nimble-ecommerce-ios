//
//  SettingSectionViewModel.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 20/05/2021.
//

struct SettingSectionViewModel: Identifiable {

    let id: Int
    let title: String
    let cellViewModels: [SettingCellViewModel]
}
