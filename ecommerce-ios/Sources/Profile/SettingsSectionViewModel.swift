//
//  SettingsSectionViewModel.swift
//  ecommerce-ios
//
//  Created by Nguyen M. Tam on 20/05/2021.
//

struct SettingsSectionViewModel: Identifiable {

    let id: Int
    let title: String
    let cellViewModels: [SettingsCellViewModel]
}

extension SettingsSectionViewModel {

    init(sectionType: SettingsSectionType) {
        let cellViewModels = sectionType.settingTypes.map(SettingsCellViewModel.init)
        self.init(
            id: sectionType.rawValue,
            title: sectionType.title,
            cellViewModels: cellViewModels
        )
    }
}
